abstract interface class GrpcConfiguration {
  /// Duration of time the client is willing to wait for an RPC to 
  /// complete before it is terminated with a DeadlineExceeded error
  late Duration deadline;

  /// Copy constructor for overriding the client-side deadline
  GrpcConfiguration withDeadline(Duration deadline);
}

/// Encapsulates gRPC configuration tunables
class StaticGrpcConfiguration implements GrpcConfiguration {
  @override
  late Duration deadline;

  StaticGrpcConfiguration(this.deadline);

  @override
  GrpcConfiguration withDeadline(Duration deadline) {
    return StaticGrpcConfiguration(deadline);
  }
}