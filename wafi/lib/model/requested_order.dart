import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'order_source.dart';

class RequestedOrder {

    final String id;
    final String requesterUserId;
    final String requestedUserId;
    final String takerUserId;
    final String title;
    final OrderSource source;
    final String floor;
    final String classroom;
    final String description;
    final String status;


    RequestedOrder.fromMap(String id, String requestUserId, dynamic obj,[String requestedUserId]):
        this.id = id,
        this.requesterUserId = requestUserId,
        this.requestedUserId = requestedUserId,
        this.takerUserId = obj['takerUserId'],
        title = obj['title'],
        source = OrderSource.fromName(obj['source']),
        floor = obj['floor'],
        classroom = obj['classroom'],
        description = obj['description'],
        status = obj['status'];

    @override
    String toString() {
        return 'RequestedOrder{id: $id, requesterUserId: $requesterUserId, requestedUserId: $requestedUserId, takerUserId: $takerUserId, title: $title, source: $source, floor: $floor, classroom: $classroom, description: $description, status: $status}';
    }
}
