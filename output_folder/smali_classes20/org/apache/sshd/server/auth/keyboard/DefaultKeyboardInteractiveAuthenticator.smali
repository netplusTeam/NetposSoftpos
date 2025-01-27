.class public Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "DefaultKeyboardInteractiveAuthenticator.java"

# interfaces
.implements Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;


# static fields
.field public static final DEFAULT_KB_INTERACTIVE_ECHO_PROMPT:Z = false

.field public static final DEFAULT_KB_INTERACTIVE_INSTRUCTION:Ljava/lang/String; = ""

.field public static final DEFAULT_KB_INTERACTIVE_LANG:Ljava/lang/String; = "en-US"

.field public static final DEFAULT_KB_INTERACTIVE_NAME:Ljava/lang/String; = "Password authentication"

.field public static final DEFAULT_KB_INTERACTIVE_PROMPT:Ljava/lang/String; = "Password: "

.field public static final INSTANCE:Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;

.field public static final KB_INTERACTIVE_ECHO_PROMPT_PROP:Ljava/lang/String; = "kb-server-interactive-echo-prompt"

.field public static final KB_INTERACTIVE_INSTRUCTION_PROP:Ljava/lang/String; = "kb-server-interactive-instruction"

.field public static final KB_INTERACTIVE_LANG_PROP:Ljava/lang/String; = "kb-server-interactive-language"

.field public static final KB_INTERACTIVE_NAME_PROP:Ljava/lang/String; = "kb-server-interactive-name"

.field public static final KB_INTERACTIVE_PROMPT_PROP:Ljava/lang/String; = "kb-server-interactive-prompt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;

    invoke-direct {v0}, Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;->INSTANCE:Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public authenticate(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/util/List;)Z
    .locals 7
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p2, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/session/ServerSession;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    .local p3, "responses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/apache/sshd/server/session/ServerSession;->getPasswordAuthenticator()Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;

    move-result-object v0

    .line 81
    .local v0, "auth":Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 82
    iget-object v2, p0, Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;->log:Lorg/slf4j/Logger;

    const-string v3, "authenticate({})[{}] no password authenticator"

    invoke-interface {v2, v3, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    :cond_0
    return v1

    .line 88
    :cond_1
    invoke-static {p3}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v2

    .line 89
    .local v2, "numResp":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 94
    :try_start_0
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, p2, v4, p1}, Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;->authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 95
    :catch_0
    move-exception v4

    .line 96
    .local v4, "e":Ljava/lang/Error;
    iget-object v5, p0, Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v1

    aput-object p2, v6, v3

    const/4 v1, 0x2

    .line 97
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    const/4 v1, 0x3

    invoke-virtual {v4}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    .line 96
    const-string v1, "authenticate({})[{}] failed ({}) to consult password authenticator: {}"

    invoke-interface {v5, v1, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p0, Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authenticate("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] authenticator failure details"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    :cond_2
    new-instance v1, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v1, v4}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 90
    .end local v4    # "e":Ljava/lang/Error;
    :cond_3
    new-instance v1, Lorg/apache/sshd/common/SshException;

    const-string v3, "Mismatched number of responses"

    invoke-direct {v1, v3}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateChallenge(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "lang"    # Ljava/lang/String;
    .param p4, "subMethods"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-interface {p1}, Lorg/apache/sshd/server/session/ServerSession;->getPasswordAuthenticator()Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;

    move-result-object v0

    .line 63
    .local v0, "auth":Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;
    if-nez v0, :cond_1

    .line 64
    iget-object v1, p0, Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;->log:Lorg/slf4j/Logger;

    const-string v2, "generateChallenge({})[{}] no password authenticator"

    invoke-interface {v1, v2, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 70
    :cond_1
    new-instance v1, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;

    invoke-direct {v1}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;-><init>()V

    .line 71
    .local v1, "challenge":Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;->getInteractionName(Lorg/apache/sshd/server/session/ServerSession;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->setInteractionName(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;->getInteractionInstruction(Lorg/apache/sshd/server/session/ServerSession;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->setInteractionInstruction(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;->getInteractionLanguage(Lorg/apache/sshd/server/session/ServerSession;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->setLanguageTag(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;->getInteractionPrompt(Lorg/apache/sshd/server/session/ServerSession;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/auth/keyboard/DefaultKeyboardInteractiveAuthenticator;->isInteractionPromptEchoEnabled(Lorg/apache/sshd/server/session/ServerSession;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;->addPrompt(Ljava/lang/String;Z)V

    .line 75
    return-object v1
.end method

.method protected getInteractionInstruction(Lorg/apache/sshd/server/session/ServerSession;)Ljava/lang/String;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 111
    const-string v0, "kb-server-interactive-instruction"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lorg/apache/sshd/server/session/ServerSession;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInteractionLanguage(Lorg/apache/sshd/server/session/ServerSession;)Ljava/lang/String;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 115
    const-string v0, "kb-server-interactive-language"

    const-string v1, "en-US"

    invoke-interface {p1, v0, v1}, Lorg/apache/sshd/server/session/ServerSession;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInteractionName(Lorg/apache/sshd/server/session/ServerSession;)Ljava/lang/String;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 107
    const-string v0, "kb-server-interactive-name"

    const-string v1, "Password authentication"

    invoke-interface {p1, v0, v1}, Lorg/apache/sshd/server/session/ServerSession;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInteractionPrompt(Lorg/apache/sshd/server/session/ServerSession;)Ljava/lang/String;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 119
    const-string v0, "kb-server-interactive-prompt"

    const-string v1, "Password: "

    invoke-interface {p1, v0, v1}, Lorg/apache/sshd/server/session/ServerSession;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isInteractionPromptEchoEnabled(Lorg/apache/sshd/server/session/ServerSession;)Z
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 123
    const-string v0, "kb-server-interactive-echo-prompt"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/apache/sshd/server/session/ServerSession;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
