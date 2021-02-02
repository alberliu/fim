import 'package:fim/pb/business.ext.pbgrpc.dart';
import 'package:fim/pb/logic.ext.pbgrpc.dart';
import 'package:grpc/grpc.dart';

const String baseUrl = "47.242.224.6";
const String uploadUrl = "http://47.242.224.6:8085/upload";

var interceptors = Interceptor();

class Interceptor implements ClientInterceptor {
  ResponseStream interceptStreaming(ClientMethod method,
      Stream requests, CallOptions options,
      ClientStreamingInvoker invoker) {
    return invoker.call(method, requests, options);
  }

  ResponseFuture<R> interceptUnary(ClientMethod<Q, R> method, Q request,
      CallOptions options, ClientUnaryInvoker<Q, R> invoker) {

  }
}

final logicClient = LogicExtClient(ClientChannel(
  baseUrl,
  port: 50001,
  options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
));

final businessClient = BusinessExtClient(ClientChannel(
  baseUrl,
  port: 50301,
  options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
));
