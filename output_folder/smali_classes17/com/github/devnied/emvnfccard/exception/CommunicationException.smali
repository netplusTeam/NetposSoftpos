.class public Lcom/github/devnied/emvnfccard/exception/CommunicationException;
.super Ljava/io/IOException;
.source "CommunicationException.java"


# static fields
.field private static final serialVersionUID:J = -0x6dde90a8fb37ebc9L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pMessage"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
