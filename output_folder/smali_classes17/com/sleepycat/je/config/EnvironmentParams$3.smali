.class final Lcom/sleepycat/je/config/EnvironmentParams$3;
.super Lcom/sleepycat/je/config/ConfigParam;
.source "EnvironmentParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/config/EnvironmentParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "configName"    # Ljava/lang/String;
    .param p2, "configDefault"    # Ljava/lang/String;
    .param p3, "mutable"    # Z
    .param p4, "forReplication"    # Z

    .line 2006
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sleepycat/je/config/ConfigParam;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public validateValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "durabilityString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2012
    invoke-static {p1}, Lcom/sleepycat/je/Durability;->parse(Ljava/lang/String;)Lcom/sleepycat/je/Durability;

    .line 2013
    return-void
.end method
