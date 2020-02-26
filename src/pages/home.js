import React from "react";
import { Button, View, StyleSheet, ScrollView, Text } from "react-native";
import Route from "../base/route";
import NetWork from "../base/network";

function HomeScreen(that) {
  return (
    <ScrollView style={style.scrollView}>
      <View style={style.view}>
        <View style={style.button}>
          <Button
            color="blue"
            title="打开原生页面"
            onPress={() => {
              Route.open("test", { name: "test" });
            }}
          />
        </View>
        <View style={style.button}>
          <Button
            color="green"
            title="获取请求"
            onPress={() => {
              NetWork.getRequest(
                "http://api.63code.com/douyin/api.php?url=http://v.douyin.com/5w5JwL/",
                {}
              )
                .then(res => {
                  that.setState({
                    testText: JSON.stringify(res)
                  });
                })
                .catch(e => {
                  console.log("error========================", e);
                });
            }}
          />
        </View>
        <Text style={style.text}>{that.state.testText}</Text>
      </View>
    </ScrollView>
  );
}

const style = StyleSheet.create({
  scrollView: {
    backgroundColor: "red"
  },
  button: {
    flex: 0,
    justifyContent: "center",
    marginTop: 10,
    width: "90%",
    backgroundColor: "white",
    borderRadius: 10,
    height: 60
  },
  view: {
    flex: 1,
    alignItems: "center",
    justifyContent: "flex-start"
  },
  text: {
    marginTop: 20,
    color: "black",
    fontSize: 16
  }
});

class HomeView extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      testText: "我是测试数据"
    };
  }
  render() {
    return HomeScreen(this);
  }
}
export default HomeView;
