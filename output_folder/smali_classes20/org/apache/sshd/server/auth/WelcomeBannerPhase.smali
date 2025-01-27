.class public final enum Lorg/apache/sshd/server/auth/WelcomeBannerPhase;
.super Ljava/lang/Enum;
.source "WelcomeBannerPhase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/server/auth/WelcomeBannerPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

.field public static final enum FIRST_AUTHCMD:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

.field public static final enum FIRST_FAILURE:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

.field public static final enum FIRST_REQUEST:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

.field public static final enum IMMEDIATE:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

.field public static final enum NEVER:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

.field public static final enum POST_SUCCESS:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/server/auth/WelcomeBannerPhase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 35
    new-instance v0, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->IMMEDIATE:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    .line 37
    new-instance v1, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    const-string v3, "FIRST_REQUEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->FIRST_REQUEST:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    .line 39
    new-instance v3, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    const-string v5, "FIRST_AUTHCMD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->FIRST_AUTHCMD:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    .line 41
    new-instance v5, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    const-string v7, "FIRST_FAILURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->FIRST_FAILURE:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    .line 43
    new-instance v7, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    const-string v9, "POST_SUCCESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->POST_SUCCESS:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    .line 49
    new-instance v9, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    const-string v11, "NEVER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->NEVER:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    .line 33
    const/4 v11, 0x6

    new-array v11, v11, [Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->$VALUES:[Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    .line 51
    const-class v0, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    .line 52
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->VALUES:Ljava/util/Set;

    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/server/auth/WelcomeBannerPhase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/server/auth/WelcomeBannerPhase;
    .locals 1

    .line 33
    sget-object v0, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->$VALUES:[Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    invoke-virtual {v0}, [Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    return-object v0
.end method
