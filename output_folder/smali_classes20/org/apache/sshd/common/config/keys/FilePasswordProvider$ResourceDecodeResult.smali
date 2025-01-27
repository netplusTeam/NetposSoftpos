.class public final enum Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
.super Ljava/lang/Enum;
.source "FilePasswordProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceDecodeResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

.field public static final enum IGNORE:Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

.field public static final enum RETRY:Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

.field public static final enum TERMINATE:Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 38
    new-instance v0, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    const-string v1, "TERMINATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;->TERMINATE:Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    .line 40
    new-instance v1, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    const-string v3, "RETRY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;->RETRY:Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    .line 42
    new-instance v3, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    const-string v5, "IGNORE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;->IGNORE:Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    .line 36
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;->$VALUES:[Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    .line 44
    const-class v0, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    .line 45
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;->VALUES:Ljava/util/Set;

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    .locals 1

    .line 36
    sget-object v0, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;->$VALUES:[Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    return-object v0
.end method
