.class public final enum Lorg/apache/sshd/common/compression/Compression$Type;
.super Ljava/lang/Enum;
.source "Compression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/compression/Compression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/compression/Compression$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/compression/Compression$Type;

.field public static final enum Deflater:Lorg/apache/sshd/common/compression/Compression$Type;

.field public static final enum Inflater:Lorg/apache/sshd/common/compression/Compression$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lorg/apache/sshd/common/compression/Compression$Type;

    const-string v1, "Inflater"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/compression/Compression$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/common/compression/Compression$Type;->Inflater:Lorg/apache/sshd/common/compression/Compression$Type;

    .line 39
    new-instance v1, Lorg/apache/sshd/common/compression/Compression$Type;

    const-string v3, "Deflater"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/common/compression/Compression$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/common/compression/Compression$Type;->Deflater:Lorg/apache/sshd/common/compression/Compression$Type;

    .line 37
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/sshd/common/compression/Compression$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/sshd/common/compression/Compression$Type;->$VALUES:[Lorg/apache/sshd/common/compression/Compression$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/compression/Compression$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    const-class v0, Lorg/apache/sshd/common/compression/Compression$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/compression/Compression$Type;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/compression/Compression$Type;
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/sshd/common/compression/Compression$Type;->$VALUES:[Lorg/apache/sshd/common/compression/Compression$Type;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/compression/Compression$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/compression/Compression$Type;

    return-object v0
.end method
