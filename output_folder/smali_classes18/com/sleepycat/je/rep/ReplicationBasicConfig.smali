.class public Lcom/sleepycat/je/rep/ReplicationBasicConfig;
.super Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
.source "ReplicationBasicConfig.java"


# static fields
.field private static repBasicProperties:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sleepycat/je/rep/ReplicationBasicConfig;->repBasicProperties:Ljava/util/Set;

    .line 35
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/ReplicationBasicConfig;->repBasicProperties:Ljava/util/Set;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 0
    .param p1, "properties"    # Ljava/util/Properties;

    .line 52
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;-><init>(Ljava/util/Properties;)V

    .line 53
    return-void
.end method

.method static getRepBasicPropertySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/sleepycat/je/rep/ReplicationBasicConfig;->repBasicProperties:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/rep/ReplicationBasicConfig;
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/sleepycat/je/rep/ReplicationNetworkConfig;->clone()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationBasicConfig;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationBasicConfig;->clone()Lcom/sleepycat/je/rep/ReplicationBasicConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/ReplicationBasicConfig;->clone()Lcom/sleepycat/je/rep/ReplicationBasicConfig;

    move-result-object v0

    return-object v0
.end method

.method public getChannelType()Ljava/lang/String;
    .locals 1

    .line 63
    const-string v0, "basic"

    return-object v0
.end method
