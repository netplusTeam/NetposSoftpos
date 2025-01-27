.class public Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
.super Ljava/lang/Exception;
.source "ServiceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceConnectFailedException"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final response:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

.field final serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1173
    const-class v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    .line 1179
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 1180
    sget-object v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->OK:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    if-eq p2, v0, :cond_0

    .line 1181
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;->response:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    .line 1182
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;->serviceName:Ljava/lang/String;

    .line 1183
    return-void

    .line 1180
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 1191
    sget-object v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$1;->$SwitchMap$com$sleepycat$je$rep$utilint$ServiceDispatcher$Response:[I

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;->response:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;->response:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1217
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 1208
    :pswitch_0
    const-string v0, "Authentication required"

    return-object v0

    .line 1205
    :pswitch_1
    const-string v0, "Protocol continuation requested"

    return-object v0

    .line 1202
    :pswitch_2
    const-string v0, "Invalid response supplied"

    return-object v0

    .line 1199
    :pswitch_3
    const-string v0, "Service was busy"

    return-object v0

    .line 1196
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown service request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1193
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad message format, for service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getResponse()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;->response:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Response;

    return-object v0
.end method
