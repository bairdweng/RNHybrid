import { NativeModules } from "react-native";
let networkModule = NativeModules.RNNetWorkModule;
class Network {
  static async postRequest(url, params) {
    return await networkModule.postRequest(url, params);
  }
  static async getRequest(url, params) {
    return await networkModule.getRequest(url, params);
  }
}

export default Network;
