.class public final enum Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;
.super Ljava/lang/Enum;
.source "TcpipClientChannel.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/forward/TcpipClientChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;",
        ">;",
        "Lorg/apache/sshd/common/NamedResource;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

.field public static final enum Direct:Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

.field public static final enum Forwarded:Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final channelType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 57
    new-instance v0, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    const-string v1, "Direct"

    const/4 v2, 0x0

    const-string v3, "direct-tcpip"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;->Direct:Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    .line 58
    new-instance v1, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    const-string v3, "Forwarded"

    const/4 v4, 0x1

    const-string v5, "forwarded-tcpip"

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;->Forwarded:Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    .line 56
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;->$VALUES:[Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    .line 60
    const-class v0, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    .line 61
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;->VALUES:Ljava/util/Set;

    .line 60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "channelType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput-object p3, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;->channelType:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 56
    const-class v0, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;
    .locals 1

    .line 56
    sget-object v0, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;->$VALUES:[Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;->channelType:Ljava/lang/String;

    return-object v0
.end method
