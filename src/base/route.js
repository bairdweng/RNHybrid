import { NativeModules } from "react-native";
let nativeModule = NativeModules.RNRTModule;
class Route {
  static open(name, params) {
    nativeModule.open(name, params);
  }

  static async postRequest(url, params) {
    return await nativeModule.postRequest(url, params);
  }
  static async getRequest(url, params) {
    return await nativeModule.getRequest(url, params);
  }
}

export default Route;
