.class public Lcom/sleepycat/je/rep/net/InstanceParams;
.super Ljava/lang/Object;
.source "InstanceParams.java"


# instance fields
.field private final classParams:Ljava/lang/String;

.field private final context:Lcom/sleepycat/je/rep/net/InstanceContext;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/net/InstanceContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lcom/sleepycat/je/rep/net/InstanceContext;
    .param p2, "classParams"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sleepycat/je/rep/net/InstanceParams;->context:Lcom/sleepycat/je/rep/net/InstanceContext;

    .line 33
    iput-object p2, p0, Lcom/sleepycat/je/rep/net/InstanceParams;->classParams:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public final getClassParams()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sleepycat/je/rep/net/InstanceParams;->classParams:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Lcom/sleepycat/je/rep/net/InstanceContext;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/sleepycat/je/rep/net/InstanceParams;->context:Lcom/sleepycat/je/rep/net/InstanceContext;

    return-object v0
.end method
