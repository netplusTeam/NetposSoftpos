.class Lcom/sleepycat/je/rep/utilint/ServiceHandshake$NoMatchAuthentication;
.super Ljava/lang/Object;
.source "ServiceHandshake.java"

# interfaces
.implements Lcom/sleepycat/je/rep/utilint/ServiceHandshake$AuthenticationMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoMatchAuthentication"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/utilint/ServiceHandshake$NoMatchAuthentication$NoMatchAuthenticateOp;
    }
.end annotation


# static fields
.field static final MECHANISM:Ljava/lang/String; = "NoMatch"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;Ljava/lang/String;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientInitOp;
    .locals 1
    .param p1, "initIgnored"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ClientHandshake;
    .param p2, "paramsIgnored"    # Ljava/lang/String;

    .line 1007
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMechanismName()Ljava/lang/String;
    .locals 1

    .line 1000
    const-string v0, "NoMatch"

    return-object v0
.end method

.method public getServerOp(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerInitOp;
    .locals 1
    .param p1, "initState"    # Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;

    .line 1017
    new-instance v0, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$NoMatchAuthentication$NoMatchAuthenticateOp;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceHandshake$NoMatchAuthentication$NoMatchAuthenticateOp;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceHandshake$ServerHandshake;)V

    return-object v0
.end method

.method public getServerParams()Ljava/lang/String;
    .locals 1

    .line 1012
    const-string v0, ""

    return-object v0
.end method
