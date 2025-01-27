.class public final enum Lorg/apache/sshd/common/channel/RequestHandler$Result;
.super Ljava/lang/Enum;
.source "RequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/channel/RequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/channel/RequestHandler$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/channel/RequestHandler$Result;

.field public static final enum Replied:Lorg/apache/sshd/common/channel/RequestHandler$Result;

.field public static final enum ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

.field public static final enum ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

.field public static final enum Unsupported:Lorg/apache/sshd/common/channel/RequestHandler$Result;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/channel/RequestHandler$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 38
    new-instance v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;

    const-string v1, "Unsupported"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/channel/RequestHandler$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Unsupported:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    .line 39
    new-instance v1, Lorg/apache/sshd/common/channel/RequestHandler$Result;

    const-string v3, "Replied"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/common/channel/RequestHandler$Result;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Replied:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    .line 40
    new-instance v3, Lorg/apache/sshd/common/channel/RequestHandler$Result;

    const-string v5, "ReplySuccess"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/sshd/common/channel/RequestHandler$Result;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    .line 41
    new-instance v5, Lorg/apache/sshd/common/channel/RequestHandler$Result;

    const-string v7, "ReplyFailure"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/sshd/common/channel/RequestHandler$Result;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    .line 37
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/sshd/common/channel/RequestHandler$Result;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/apache/sshd/common/channel/RequestHandler$Result;->$VALUES:[Lorg/apache/sshd/common/channel/RequestHandler$Result;

    .line 43
    const-class v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;

    .line 44
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->VALUES:Ljava/util/Set;

    .line 43
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

.method public static fromName(Ljava/lang/String;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 52
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    return-object v1

    .line 56
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->VALUES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/channel/RequestHandler$Result;

    .line 57
    .local v2, "r":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    invoke-virtual {v2}, Lorg/apache/sshd/common/channel/RequestHandler$Result;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    return-object v2

    .line 60
    .end local v2    # "r":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    :cond_1
    goto :goto_0

    .line 62
    :cond_2
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    const-class v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->$VALUES:[Lorg/apache/sshd/common/channel/RequestHandler$Result;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/channel/RequestHandler$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v0
.end method
