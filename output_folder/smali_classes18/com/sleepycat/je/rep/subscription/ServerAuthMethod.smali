.class public Lcom/sleepycat/je/rep/subscription/ServerAuthMethod;
.super Ljava/lang/Object;
.source "ServerAuthMethod.java"

# interfaces
.implements Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ClientTokenOp;,
        Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;
    }
.end annotation


# instance fields
.field private final serverAuth:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;)V
    .locals 0
    .param p1, "serverAuth"    # Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod;->serverAuth:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    .line 33
    return-void
.end method


# virtual methods
.method public getClientOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;Ljava/lang/String;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;
    .locals 1
    .param p1, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;
    .param p2, "ignoredParams"    # Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ClientTokenOp;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ClientTokenOp;-><init>(Lcom/sleepycat/je/rep/subscription/ServerAuthMethod;Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;)V

    return-object v0
.end method

.method public getMechanismName()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "SubscriptionTokenAuth"

    return-object v0
.end method

.method public getServerOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;
    .locals 2
    .param p1, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    .line 49
    new-instance v0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod;->serverAuth:Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/je/rep/subscription/ServerAuthMethod$ServerTokenOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;)V

    return-object v0
.end method

.method public getServerParams()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, ""

    return-object v0
.end method
