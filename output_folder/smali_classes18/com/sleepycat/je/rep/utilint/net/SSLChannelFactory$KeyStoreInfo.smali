.class Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;
.super Ljava/lang/Object;
.source "SSLChannelFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyStoreInfo"
.end annotation


# instance fields
.field private final ks:Ljava/security/KeyStore;

.field private final ksFile:Ljava/lang/String;

.field private final ksPwd:[C


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;[C)V
    .locals 1
    .param p1, "ksFile"    # Ljava/lang/String;
    .param p2, "ks"    # Ljava/security/KeyStore;
    .param p3, "ksPwd"    # [C

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 965
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->ksFile:Ljava/lang/String;

    .line 966
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->ks:Ljava/security/KeyStore;

    .line 967
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p3

    .line 968
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->ksPwd:[C

    .line 969
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;[CLcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/security/KeyStore;
    .param p3, "x2"    # [C
    .param p4, "x3"    # Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$1;

    .line 959
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;-><init>(Ljava/lang/String;Ljava/security/KeyStore;[C)V

    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)Ljava/security/KeyStore;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;

    .line 959
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->ks:Ljava/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;

    .line 959
    invoke-direct {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->clearPassword()V

    return-void
.end method

.method static synthetic access$200(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)[C
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;

    .line 959
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->ksPwd:[C

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;

    .line 959
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->ksFile:Ljava/lang/String;

    return-object v0
.end method

.method private clearPassword()V
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->ksPwd:[C

    if-eqz v0, :cond_0

    .line 973
    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 975
    :cond_0
    return-void
.end method
