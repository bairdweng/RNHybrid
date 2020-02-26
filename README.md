# RNHybrid
## RN+Swift混合实践

* 根目录执行 yarn install

* cd ios && pod install

* 多组件对应多个Controller

  js

* ```js
  AppRegistry.registerComponent("HomeModule", () => Navigation);
  
  AppRegistry.registerComponent("PersonModule", () => DetailsScreen);
  ```

  swift

  ```swift
  let homeViewControler = RNBaseViewController()
          homeViewControler.moduleName = "HomeModule";
          homeViewControler.tabBarItem = UITabBarItem(tabBarSystemItem: .recents, tag: 0)
   
          let personViewController = RNBaseViewController()
          personViewController.moduleName = "PersonModule"
          personViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 1)
          
  ```

* Promise 通讯实例

  js

  ```
  
  ```

  Objective-C

  ```objective-c
  RCT_EXTERN_METHOD(
                  postRequest:(NSString *)name
                  params:(id)params
                  resolve:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)rejecter
  )
  
  RCT_EXTERN_METHOD(
                  getRequest:(NSString *)name
                  params:(id)params
                  resolve:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)rejecter
  )
  ```

  Swift 实现

  ```swift
  @objc func postRequest(_ url:String,params:Dictionary<String, Any>, resolve:@escaping RCTPromiseResolveBlock, rejecter: @escaping RCTPromiseRejectBlock) ->Void{
          
          AF.request(url,method: .post,parameters: params,encoding: URLEncoding.default).responseJSON { (response) in
              switch response.result {
              case .success(let json):
                  resolve(json)
              case .failure(let error):
                  rejecter(String(error.responseCode ?? 0),error.localizedDescription ,error)
                  break
              }
          }
      }
      @objc func getRequest(_ url:String,params:Dictionary<String, Any>, resolve:@escaping RCTPromiseResolveBlock, rejecter: @escaping RCTPromiseRejectBlock) ->Void{
          
          AF.request(url,method: .get,parameters: params,encoding: URLEncoding.default).responseJSON { (response) in
              switch response.result {
              case .success(let json):
                  resolve(json)
              case .failure(let error):
                  rejecter(String(error.responseCode ?? 0),error.localizedDescription ,error)
                  break
              }
          }
      }
  ```
