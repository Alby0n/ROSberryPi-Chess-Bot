// Generated by gencpp from file chessbot/ChessImageResponse.msg
// DO NOT EDIT!


#ifndef CHESSBOT_MESSAGE_CHESSIMAGERESPONSE_H
#define CHESSBOT_MESSAGE_CHESSIMAGERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace chessbot
{
template <class ContainerAllocator>
struct ChessImageResponse_
{
  typedef ChessImageResponse_<ContainerAllocator> Type;

  ChessImageResponse_()
    : immsg()  {
    }
  ChessImageResponse_(const ContainerAllocator& _alloc)
    : immsg(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _immsg_type;
  _immsg_type immsg;





  typedef boost::shared_ptr< ::chessbot::ChessImageResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::chessbot::ChessImageResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ChessImageResponse_

typedef ::chessbot::ChessImageResponse_<std::allocator<void> > ChessImageResponse;

typedef boost::shared_ptr< ::chessbot::ChessImageResponse > ChessImageResponsePtr;
typedef boost::shared_ptr< ::chessbot::ChessImageResponse const> ChessImageResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::chessbot::ChessImageResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::chessbot::ChessImageResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::chessbot::ChessImageResponse_<ContainerAllocator1> & lhs, const ::chessbot::ChessImageResponse_<ContainerAllocator2> & rhs)
{
  return lhs.immsg == rhs.immsg;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::chessbot::ChessImageResponse_<ContainerAllocator1> & lhs, const ::chessbot::ChessImageResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace chessbot

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::chessbot::ChessImageResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::chessbot::ChessImageResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::chessbot::ChessImageResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::chessbot::ChessImageResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chessbot::ChessImageResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chessbot::ChessImageResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::chessbot::ChessImageResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0f2a2d0ca79f98f8355432897b5e5ec2";
  }

  static const char* value(const ::chessbot::ChessImageResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0f2a2d0ca79f98f8ULL;
  static const uint64_t static_value2 = 0x355432897b5e5ec2ULL;
};

template<class ContainerAllocator>
struct DataType< ::chessbot::ChessImageResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "chessbot/ChessImageResponse";
  }

  static const char* value(const ::chessbot::ChessImageResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::chessbot::ChessImageResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string immsg\n"
"\n"
;
  }

  static const char* value(const ::chessbot::ChessImageResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::chessbot::ChessImageResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.immsg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChessImageResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::chessbot::ChessImageResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::chessbot::ChessImageResponse_<ContainerAllocator>& v)
  {
    s << indent << "immsg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.immsg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CHESSBOT_MESSAGE_CHESSIMAGERESPONSE_H