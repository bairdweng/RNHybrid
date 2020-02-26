import React from "react";
import { View, Text, StyleSheet, ScrollView } from "react-native";

class DetailsScreen extends React.Component {
  render() {
    // const { otherParam } = this.props.route.params;
    const otherParam = "2313123";
    return (
      <ScrollView>
        <View style={styles.content}>
          <Text style={styles.title}>{otherParam}</Text>
          <Text style={styles.title}>{otherParam}</Text>
          <Text style={styles.title}>{otherParam}</Text>
          <Text style={styles.title}>{otherParam}</Text>
        </View>
        <View style={styles.content}>
          <Text style={styles.title}>{otherParam}</Text>
          <Text style={styles.title}>{otherParam}</Text>
          <Text style={styles.title}>{otherParam}</Text>
          <Text style={styles.title}>{otherParam}</Text>
        </View>
      </ScrollView>
    );
  }
}

const styles = StyleSheet.create({
  content: {
    backgroundColor: "yellow",
    flex: 1,
    flexDirection: "row",
    justifyContent: "space-around",
    alignItems: "flex-end",
    height: 500
  },
  title: {
    height: 50,
    fontSize: 10,
    width: 40,
    backgroundColor: "red",
    color: "blue",
    lineHeight: 50,
    textAlign: "center"
  }
});

export default DetailsScreen;
