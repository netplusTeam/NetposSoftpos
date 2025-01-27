.class final Lcom/sleepycat/je/rep/impl/RepParams$1;
.super Lcom/sleepycat/je/config/ConfigParam;
.source "RepParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z

    .line 369
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public validateValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 375
    invoke-static {p1}, Lcom/sleepycat/je/rep/utilint/RepUtils;->getReplicaConsistencyPolicy(Ljava/lang/String;)Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    .line 376
    return-void
.end method
