import React from "react";
import { NavigationContainer } from "@react-navigation/native";
import { createStackNavigator } from "@react-navigation/stack";
import DetailsScreen from "./details";
import HomeView from "./home";

const Stack = createStackNavigator();
function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen name="我是首页" component={HomeView} />
        <Stack.Screen name="详情页面" component={DetailsScreen} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}
class Navigation extends React.Component {
  render() {
    return App();
  }
}
export default Navigation;
