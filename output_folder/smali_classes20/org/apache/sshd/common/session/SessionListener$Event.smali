.class public final enum Lorg/apache/sshd/common/session/SessionListener$Event;
.super Ljava/lang/Enum;
.source "SessionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/session/SessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/session/SessionListener$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/session/SessionListener$Event;

.field public static final enum Authenticated:Lorg/apache/sshd/common/session/SessionListener$Event;

.field public static final enum KexCompleted:Lorg/apache/sshd/common/session/SessionListener$Event;

.field public static final enum KeyEstablished:Lorg/apache/sshd/common/session/SessionListener$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 34
    new-instance v0, Lorg/apache/sshd/common/session/SessionListener$Event;

    const-string v1, "KeyEstablished"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/session/SessionListener$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/common/session/SessionListener$Event;->KeyEstablished:Lorg/apache/sshd/common/session/SessionListener$Event;

    new-instance v1, Lorg/apache/sshd/common/session/SessionListener$Event;

    const-string v3, "Authenticated"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/common/session/SessionListener$Event;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/common/session/SessionListener$Event;->Authenticated:Lorg/apache/sshd/common/session/SessionListener$Event;

    new-instance v3, Lorg/apache/sshd/common/session/SessionListener$Event;

    const-string v5, "KexCompleted"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/sshd/common/session/SessionListener$Event;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/sshd/common/session/SessionListener$Event;->KexCompleted:Lorg/apache/sshd/common/session/SessionListener$Event;

    .line 33
    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/sshd/common/session/SessionListener$Event;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lorg/apache/sshd/common/session/SessionListener$Event;->$VALUES:[Lorg/apache/sshd/common/session/SessionListener$Event;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/session/SessionListener$Event;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lorg/apache/sshd/common/session/SessionListener$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/SessionListener$Event;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/session/SessionListener$Event;
    .locals 1

    .line 33
    sget-object v0, Lorg/apache/sshd/common/session/SessionListener$Event;->$VALUES:[Lorg/apache/sshd/common/session/SessionListener$Event;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/session/SessionListener$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/session/SessionListener$Event;

    return-object v0
.end method
