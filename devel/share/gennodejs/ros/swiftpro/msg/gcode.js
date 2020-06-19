// Auto-generated. Do not edit!

// (in-package swiftpro.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class gcode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gcode = null;
    }
    else {
      if (initObj.hasOwnProperty('gcode')) {
        this.gcode = initObj.gcode
      }
      else {
        this.gcode = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gcode
    // Serialize message field [gcode]
    bufferOffset = _serializer.string(obj.gcode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gcode
    let len;
    let data = new gcode(null);
    // Deserialize message field [gcode]
    data.gcode = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.gcode.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swiftpro/gcode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a46afe04400af260ebb86395c467524';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string gcode
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gcode(null);
    if (msg.gcode !== undefined) {
      resolved.gcode = msg.gcode;
    }
    else {
      resolved.gcode = ''
    }

    return resolved;
    }
};

module.exports = gcode;
