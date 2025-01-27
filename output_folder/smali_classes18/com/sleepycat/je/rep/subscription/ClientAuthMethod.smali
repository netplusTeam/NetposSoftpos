.class public Lcom/sleepycat/je/rep/subscription/ClientAuthMethod;
.super Ljava/lang/Object;
.source "ClientAuthMethod.java"

# interfaces
.implements Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/subscription/ClientAuthMethod$ServerTokenOp;,
        Lcom/sleepycat/je/rep/subscription/ClientAuthMethod$ClientTokenOp;
    }
.end annotation


# instance fields
.field private final clientAuthHandler:Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;)V
    .locals 0
    .param p1, "clientAuthHandler"    # Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/ClientAuthMethod;->clientAuthHandler:Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;

    .line 34
    return-void
.end method


# virtual methods
.method public getClientOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;Ljava/lang/String;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;
    .locals 2
    .param p1, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;
    .param p2, "ignoredParams"    # Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/sleepycat/je/rep/subscription/ClientAuthMethod$ClientTokenOp;

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/ClientAuthMethod;->clientAuthHandler:Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/je/rep/subscription/ClientAuthMethod$ClientTokenOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;Lcom/sleepycat/je/rep/subscription/SubscriptionAuthHandler;)V

    return-object v0
.end method

.method public getMechanismName()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "SubscriptionTokenAuth"

    return-object v0
.end method

.method public getServerOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;
    .locals 1
    .param p1, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    .line 51
    new-instance v0, Lcom/sleepycat/je/rep/subscription/ClientAuthMethod$ServerTokenOp;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/rep/subscription/ClientAuthMethod$ServerTokenOp;-><init>(Lcom/sleepycat/je/rep/subscription/ClientAuthMethod;Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)V

    return-object v0
.end method

.method public getServerParams()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, ""

    return-object v0
.end method
