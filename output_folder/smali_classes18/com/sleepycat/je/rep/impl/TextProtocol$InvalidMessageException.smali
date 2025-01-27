.class public Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
.super Ljava/lang/Exception;
.source "TextProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/TextProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidMessageException"
.end annotation


# instance fields
.field private final errorType:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorType"    # Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;
    .param p2, "message"    # Ljava/lang/String;

    .line 1203
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1205
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;->errorType:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    .line 1206
    return-void
.end method


# virtual methods
.method public getErrorType()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;
    .locals 1

    .line 1209
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;->errorType:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    return-object v0
.end method
