import 'package:c_commerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';
class TCuvedEdgeWidget extends StatelessWidget {
  const TCuvedEdgeWidget({
    super.key, this.child
  });

final Widget? child ;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper:TCustomCurvedEdges(),
      child :child
    );
  }
}