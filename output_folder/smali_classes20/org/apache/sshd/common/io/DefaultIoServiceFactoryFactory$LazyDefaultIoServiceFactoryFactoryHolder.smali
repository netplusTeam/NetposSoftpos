.class final Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory$LazyDefaultIoServiceFactoryFactoryHolder;
.super Ljava/lang/Object;
.source "DefaultIoServiceFactoryFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyDefaultIoServiceFactoryFactoryHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 177
    new-instance v0, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;

    invoke-direct {v0}, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory$LazyDefaultIoServiceFactoryFactoryHolder;->INSTANCE:Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;
    .locals 1

    .line 176
    sget-object v0, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory$LazyDefaultIoServiceFactoryFactoryHolder;->INSTANCE:Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;

    return-object v0
.end method
