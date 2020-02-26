import Navigation from "./src/pages/navigation";

import DetailsScreen from "./src/pages/details";

import { AppRegistry } from "react-native";
// 整体js模块的名称
AppRegistry.registerComponent("HomeModule", () => Navigation);

AppRegistry.registerComponent("PersonModule", () => DetailsScreen);
