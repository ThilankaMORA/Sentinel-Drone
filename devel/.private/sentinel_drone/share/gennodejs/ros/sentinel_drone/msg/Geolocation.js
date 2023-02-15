// Auto-generated. Do not edit!

// (in-package sentinel_drone.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Geolocation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.objectid = null;
      this.lat = null;
      this.long = null;
    }
    else {
      if (initObj.hasOwnProperty('objectid')) {
        this.objectid = initObj.objectid
      }
      else {
        this.objectid = '';
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('long')) {
        this.long = initObj.long
      }
      else {
        this.long = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Geolocation
    // Serialize message field [objectid]
    bufferOffset = _serializer.string(obj.objectid, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float32(obj.lat, buffer, bufferOffset);
    // Serialize message field [long]
    bufferOffset = _serializer.float32(obj.long, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Geolocation
    let len;
    let data = new Geolocation(null);
    // Deserialize message field [objectid]
    data.objectid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [long]
    data.long = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.objectid);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sentinel_drone/Geolocation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e34099979df01fb50f0f5a329758ba04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string objectid
    float32 lat
    float32 long
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Geolocation(null);
    if (msg.objectid !== undefined) {
      resolved.objectid = msg.objectid;
    }
    else {
      resolved.objectid = ''
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.long !== undefined) {
      resolved.long = msg.long;
    }
    else {
      resolved.long = 0.0
    }

    return resolved;
    }
};

module.exports = Geolocation;
