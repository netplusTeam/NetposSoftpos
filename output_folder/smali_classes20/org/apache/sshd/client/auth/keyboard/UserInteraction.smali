.class public interface abstract Lorg/apache/sshd/client/auth/keyboard/UserInteraction;
.super Ljava/lang/Object;
.source "UserInteraction.java"


# static fields
.field public static final AUTO_DETECT_PASSWORD_PROMPT:Ljava/lang/String; = "user-interaction-auto-detect-password-prompt"

.field public static final CHECK_INTERACTIVE_PASSWORD_DELIM:Ljava/lang/String; = "user-interaction-check-password-delimiter"

.field public static final DEFAULT_AUTO_DETECT_PASSWORD_PROMPT:Z = true

.field public static final DEFAULT_CHECK_INTERACTIVE_PASSWORD_DELIM:Ljava/lang/String; = ":"

.field public static final DEFAULT_INTERACTIVE_PASSWORD_PROMPT:Ljava/lang/String; = "password"

.field public static final INTERACTIVE_PASSWORD_PROMPT:Ljava/lang/String; = "user-interaction-password-prompt"

.field public static final NONE:Lorg/apache/sshd/client/auth/keyboard/UserInteraction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lorg/apache/sshd/client/auth/keyboard/UserInteraction$1;

    invoke-direct {v0}, Lorg/apache/sshd/client/auth/keyboard/UserInteraction$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/auth/keyboard/UserInteraction;->NONE:Lorg/apache/sshd/client/auth/keyboard/UserInteraction;

    return-void
.end method

.method public static findPromptComponentLastPosition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "prompt"    # Ljava/lang/String;
    .param p1, "tokensList"    # Ljava/lang/String;

    .line 168
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "tokens":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 174
    .local v4, "t":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 175
    .local v5, "pos":I
    if-ltz v5, :cond_1

    .line 176
    return v5

    .line 173
    .end local v4    # "t":Ljava/lang/String;
    .end local v5    # "pos":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    :cond_2
    return v1

    .line 169
    .end local v0    # "tokens":[Ljava/lang/String;
    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public abstract getUpdatedPassword(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract interactive(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;
.end method

.method public isInteractionAllowed(Lorg/apache/sshd/client/session/ClientSession;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;

    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public serverVersionInfo(Lorg/apache/sshd/client/session/ClientSession;Ljava/util/List;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/session/ClientSession;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p2, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public welcome(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "banner"    # Ljava/lang/String;
    .param p3, "lang"    # Ljava/lang/String;

    .line 125
    return-void
.end method
