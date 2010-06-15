using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MatozDz;
using MatozDz.Controllers;
using System.Web.Mvc;
using Moq;
using MatozDz.Models;
using MatozDz.ViewModel;
using MatozDz.Helpers;
namespace MatozDz.Tests.Controllers
{
    /// <summary>
    /// Summary description for MagasinsControllerTest
    /// </summary>
    [TestClass]
    public class MagasinsControllerTest
    {
        public MagasinsControllerTest()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        [TestMethod]
        public void Detail_Can_Handle_invalid_value()
        {

            // Arrange
            var mockTime = new Mock<IDateTime>();

            // we don't care the id of the store, we should always return a null value to make this test work.
            var mockStoreRepostiroy = new Mock<IStoresRepository>();
            mockStoreRepostiroy.Setup(p => p.GetStoreById(It.IsAny<int>()))
                .Returns((StoreDetail)null);


            MagasinsController controller = new MagasinsController(mockStoreRepostiroy.Object, mockTime.Object);

            // Act
            var result = controller.Detail(0) as ViewResult;


            // Assert
            Assert.IsNotNull(result);
            Assert.AreEqual("error", result.ViewName, "Error page should appear if store id is invalid");

        }
    }
}
