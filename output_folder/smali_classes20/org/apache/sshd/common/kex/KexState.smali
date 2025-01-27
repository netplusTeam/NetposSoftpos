.class public final enum Lorg/apache/sshd/common/kex/KexState;
.super Ljava/lang/Enum;
.source "KexState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/kex/KexState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/kex/KexState;

.field public static final enum DONE:Lorg/apache/sshd/common/kex/KexState;

.field public static final enum INIT:Lorg/apache/sshd/common/kex/KexState;

.field public static final enum KEYS:Lorg/apache/sshd/common/kex/KexState;

.field public static final enum RUN:Lorg/apache/sshd/common/kex/KexState;

.field public static final enum UNKNOWN:Lorg/apache/sshd/common/kex/KexState;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/kex/KexState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 32
    new-instance v0, Lorg/apache/sshd/common/kex/KexState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/kex/KexState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/common/kex/KexState;->UNKNOWN:Lorg/apache/sshd/common/kex/KexState;

    .line 33
    new-instance v1, Lorg/apache/sshd/common/kex/KexState;

    const-string v3, "INIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/common/kex/KexState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/common/kex/KexState;->INIT:Lorg/apache/sshd/common/kex/KexState;

    .line 34
    new-instance v3, Lorg/apache/sshd/common/kex/KexState;

    const-string v5, "RUN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/sshd/common/kex/KexState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/sshd/common/kex/KexState;->RUN:Lorg/apache/sshd/common/kex/KexState;

    .line 35
    new-instance v5, Lorg/apache/sshd/common/kex/KexState;

    const-string v7, "KEYS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/sshd/common/kex/KexState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/sshd/common/kex/KexState;->KEYS:Lorg/apache/sshd/common/kex/KexState;

    .line 36
    new-instance v7, Lorg/apache/sshd/common/kex/KexState;

    const-string v9, "DONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/sshd/common/kex/KexState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/sshd/common/kex/KexState;->DONE:Lorg/apache/sshd/common/kex/KexState;

    .line 31
    const/4 v9, 0x5

    new-array v9, v9, [Lorg/apache/sshd/common/kex/KexState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/apache/sshd/common/kex/KexState;->$VALUES:[Lorg/apache/sshd/common/kex/KexState;

    .line 38
    const-class v0, Lorg/apache/sshd/common/kex/KexState;

    .line 39
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/kex/KexState;->VALUES:Ljava/util/Set;

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/kex/KexState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    const-class v0, Lorg/apache/sshd/common/kex/KexState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/KexState;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/kex/KexState;
    .locals 1

    .line 31
    sget-object v0, Lorg/apache/sshd/common/kex/KexState;->$VALUES:[Lorg/apache/sshd/common/kex/KexState;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/kex/KexState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/kex/KexState;

    return-object v0
.end method
