package com.woleapp.netpos.contactless.model

data class FeedbackRequest(
    val feedback: String,
    val subject: String,
    val username: String
)