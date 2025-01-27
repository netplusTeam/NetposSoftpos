.class public final enum Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;
.super Ljava/lang/Enum;
.source "KexExtensionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KexPhase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;

.field public static final enum AUTHOK:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;

.field public static final enum NEWKEYS:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 126
    new-instance v0, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;

    const-string v1, "NEWKEYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;->NEWKEYS:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;

    .line 127
    new-instance v1, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;

    const-string v3, "AUTHOK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;->AUTHOK:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;

    .line 125
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;->$VALUES:[Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;

    .line 129
    const-class v0, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;

    .line 130
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;->VALUES:Ljava/util/Set;

    .line 129
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 125
    const-class v0, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;
    .locals 1

    .line 125
    sget-object v0, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;->$VALUES:[Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$KexPhase;

    return-object v0
.end method
