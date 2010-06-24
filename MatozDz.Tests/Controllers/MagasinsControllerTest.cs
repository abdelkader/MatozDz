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
       
        [TestMethod]
        public void Detail_Can_Handle_invalid_value()
        {

            // Arrange
            int IdOfInvalidStore = 0;
            var mockTime = new Mock<IDateTime>();

            // we don't care the id of the store, we should always return a null value to make this test work.
            var mockStoreRepostiroy = new Mock<IStoresRepository>();
            mockStoreRepostiroy.Setup(p => p.GetStoreById(It.IsAny<int>()))
                .Returns((StoreDetail)null);


            MagasinsController controller = new MagasinsController(mockStoreRepostiroy.Object, mockTime.Object);

            // Act
            var result = controller.Detail(IdOfInvalidStore) as ViewResult;


            // Assert
            Assert.IsNotNull(result);
            Assert.AreEqual("error", result.ViewName, "Error page should appear if store id is invalid");

        }


        [TestMethod]
        public void Index()
        {

            // Arrange
            int RandomPage = 5;
            var mockTime = new Mock<IDateTime>();
            IQueryable<Store> fakeStores = new List<Store>
                                           {
                                               new Store() { name = "aa"}
                                           }.AsQueryable();

            // we don't care the id of the store, we should always return a null value to make this test work.
            var mockStoreRepostiroy = new Mock<IStoresRepository>();
            //todo: setup some list of store.
            mockStoreRepostiroy.Setup(st => st.GetStores())
                .Returns(fakeStores);


            MagasinsController controller = new MagasinsController(mockStoreRepostiroy.Object, mockTime.Object);

            // Act
            var result = controller.Index(RandomPage) as ViewResult;


            // Assert
            Assert.IsNotNull(result);
           

        }

         
    }
}
