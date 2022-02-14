// Auto-generated. Do not edit!

// (in-package beginner_tutorials.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddTwoIntsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.emotion = null;
      this.sensor_id = null;
    }
    else {
      if (initObj.hasOwnProperty('emotion')) {
        this.emotion = initObj.emotion
      }
      else {
        this.emotion = '';
      }
      if (initObj.hasOwnProperty('sensor_id')) {
        this.sensor_id = initObj.sensor_id
      }
      else {
        this.sensor_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddTwoIntsRequest
    // Serialize message field [emotion]
    bufferOffset = _serializer.string(obj.emotion, buffer, bufferOffset);
    // Serialize message field [sensor_id]
    bufferOffset = _serializer.string(obj.sensor_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddTwoIntsRequest
    let len;
    let data = new AddTwoIntsRequest(null);
    // Deserialize message field [emotion]
    data.emotion = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sensor_id]
    data.sensor_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.emotion);
    length += _getByteLength(object.sensor_id);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/AddTwoIntsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5cf34dd271306e1132edb4d0a844fdb1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string emotion
    string sensor_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddTwoIntsRequest(null);
    if (msg.emotion !== undefined) {
      resolved.emotion = msg.emotion;
    }
    else {
      resolved.emotion = ''
    }

    if (msg.sensor_id !== undefined) {
      resolved.sensor_id = msg.sensor_id;
    }
    else {
      resolved.sensor_id = ''
    }

    return resolved;
    }
};

class AddTwoIntsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resp = null;
    }
    else {
      if (initObj.hasOwnProperty('resp')) {
        this.resp = initObj.resp
      }
      else {
        this.resp = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AddTwoIntsResponse
    // Serialize message field [resp]
    bufferOffset = _serializer.string(obj.resp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddTwoIntsResponse
    let len;
    let data = new AddTwoIntsResponse(null);
    // Deserialize message field [resp]
    data.resp = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.resp);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'beginner_tutorials/AddTwoIntsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b791c1a4a4f0cee32b54dd1a73706a59';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string resp
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddTwoIntsResponse(null);
    if (msg.resp !== undefined) {
      resolved.resp = msg.resp;
    }
    else {
      resolved.resp = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: AddTwoIntsRequest,
  Response: AddTwoIntsResponse,
  md5sum() { return '7c82105cb5cdc3d55e658c0fea7184bb'; },
  datatype() { return 'beginner_tutorials/AddTwoInts'; }
};
