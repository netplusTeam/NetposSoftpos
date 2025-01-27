.class public final enum Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;
.super Ljava/lang/Enum;
.source "KexExtensionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/kex/extension/KexExtensionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AvailabilityPhase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

.field public static final enum AUTHOK:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

.field public static final enum NEWKEYS:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

.field public static final enum PREKEX:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

.field public static final enum PROPOSAL:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 49
    new-instance v0, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    const-string v1, "PREKEX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;->PREKEX:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    .line 55
    new-instance v1, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    const-string v3, "PROPOSAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;->PROPOSAL:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    .line 60
    new-instance v3, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    const-string v5, "NEWKEYS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;->NEWKEYS:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    .line 66
    new-instance v5, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    const-string v7, "AUTHOK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;->AUTHOK:Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    .line 43
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;->$VALUES:[Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;
    .locals 1

    .line 43
    sget-object v0, Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;->$VALUES:[Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/kex/extension/KexExtensionHandler$AvailabilityPhase;

    return-object v0
.end method
