.class public Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;
.super Lorg/apache/sshd/client/auth/AbstractUserAuth;
.source "UserAuthKeyboardInteractive.java"


# static fields
.field public static final DEFAULT_INTERACTIVE_LANGUAGE_TAG:Ljava/lang/String; = ""

.field public static final DEFAULT_INTERACTIVE_SUBMETHODS:Ljava/lang/String; = ""

.field public static final INTERACTIVE_LANGUAGE_TAG:Ljava/lang/String; = "kb-client-interactive-language-tag"

.field public static final INTERACTIVE_SUBMETHODS:Ljava/lang/String; = "kb-client-interactive-sub-methods"

.field public static final NAME:Ljava/lang/String; = "keyboard-interactive"


# instance fields
.field private final emptyCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private maxTrials:I

.field private passwords:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requestPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final trialsCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 84
    const-string v0, "keyboard-interactive"

    invoke-direct {p0, v0}, Lorg/apache/sshd/client/auth/AbstractUserAuth;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->requestPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->trialsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->emptyCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    return-void
.end method

.method public static getAuthCommandName(I)Ljava/lang/String;
    .locals 1
    .param p0, "cmd"    # I

    .line 365
    sparse-switch p0, :sswitch_data_0

    .line 371
    invoke-static {p0}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 369
    :sswitch_0
    const-string v0, "SSH_MSG_USERAUTH_INFO_REQUEST"

    return-object v0

    .line 367
    :sswitch_1
    const-string v0, "SSH_MSG_USERAUTH_REQUEST"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_1
        0x3c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected getCurrentPasswordCandidate()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->passwords:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->passwords:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 231
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getExchangeLanguageTag(Lorg/apache/sshd/client/session/ClientSession;)Ljava/lang/String;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;

    .line 220
    const-string v0, "kb-client-interactive-language-tag"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lorg/apache/sshd/client/session/ClientSession;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getExchangeSubMethods(Lorg/apache/sshd/client/session/ClientSession;)Ljava/lang/String;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;

    .line 224
    const-string v0, "kb-client-interactive-sub-methods"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lorg/apache/sshd/client/session/ClientSession;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUserResponses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;
    .locals 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "instruction"    # Ljava/lang/String;
    .param p3, "lang"    # Ljava/lang/String;
    .param p4, "prompt"    # [Ljava/lang/String;
    .param p5, "echo"    # [Z

    .line 262
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v11

    .line 263
    .local v11, "session":Lorg/apache/sshd/client/session/ClientSession;
    invoke-static/range {p4 .. p4}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v12

    .line 264
    .local v12, "num":I
    iget-object v0, v9, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v13

    .line 272
    .local v13, "debugEnabled":Z
    if-nez v12, :cond_1

    .line 273
    if-eqz v13, :cond_0

    .line 274
    iget-object v0, v9, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    const-string v1, "getUserResponses({}) no prompts for interaction={}"

    invoke-interface {v0, v1, v11, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 279
    :cond_1
    const-string/jumbo v0, "user-interaction-auto-detect-password-prompt"

    const/4 v14, 0x1

    invoke-static {v11, v0, v14}, Lorg/apache/sshd/common/PropertyResolverUtils;->getBooleanProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v15, 0x0

    if-eqz v0, :cond_3

    .line 282
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->getCurrentPasswordCandidate()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "candidate":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->useCurrentPassword(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    if-eqz v13, :cond_2

    .line 285
    iget-object v1, v9, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    const-string v2, "getUserResponses({}) use password candidate for interaction={}"

    invoke-interface {v1, v2, v11, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    :cond_2
    new-array v1, v14, [Ljava/lang/String;

    aput-object v0, v1, v15

    return-object v1

    .line 291
    .end local v0    # "candidate":Ljava/lang/String;
    :cond_3
    invoke-interface {v11}, Lorg/apache/sshd/client/session/ClientSession;->getUserInteraction()Lorg/apache/sshd/client/auth/keyboard/UserInteraction;

    move-result-object v8

    .line 293
    .local v8, "ui":Lorg/apache/sshd/client/auth/keyboard/UserInteraction;
    if-eqz v8, :cond_5

    :try_start_0
    invoke-interface {v8, v11}, Lorg/apache/sshd/client/auth/keyboard/UserInteraction;->isInteractionAllowed(Lorg/apache/sshd/client/session/ClientSession;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 294
    move-object v1, v8

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/apache/sshd/client/auth/keyboard/UserInteraction;->interactive(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, v9, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v11, v2, v15

    .line 298
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v14

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 297
    const-string v3, "getUserResponses({}) failed ({}) to consult interaction: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    if-eqz v13, :cond_4

    .line 300
    iget-object v1, v9, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserResponses("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") interaction consultation failure details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    :cond_4
    new-instance v1, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 304
    .end local v0    # "e":Ljava/lang/Error;
    :cond_5
    nop

    .line 306
    if-eqz v13, :cond_6

    .line 307
    iget-object v0, v9, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    const-string v1, "getUserResponses({}) no user interaction for name={}"

    invoke-interface {v0, v1, v11, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    invoke-super {p0, p1, p2}, Lorg/apache/sshd/client/auth/AbstractUserAuth;->init(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lorg/apache/sshd/client/session/ClientSession;->passwordIteratorOf(Lorg/apache/sshd/client/session/ClientSession;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->passwords:Ljava/util/Iterator;

    .line 91
    const-string v0, "password-prompts"

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lorg/apache/sshd/client/session/ClientSession;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->maxTrials:I

    .line 93
    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v0

    const-string v0, "Non-positive max. trials: %d"

    invoke-static {v1, v0, v2, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 94
    return-void
.end method

.method protected processAuthDataRequest(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 26
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v14

    .line 137
    .local v14, "cmd":I
    const/16 v0, 0x3c

    if-ne v14, v0, :cond_d

    .line 142
    iget-object v0, v11, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->requestPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v16

    .line 145
    .local v16, "name":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v17

    .line 146
    .local v17, "instruction":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v18

    .line 147
    .local v18, "lang":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v10

    .line 149
    .local v10, "num":I
    const/4 v6, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/16 v19, 0x2

    const/16 v20, 0x1

    if-ltz v10, :cond_c

    const v0, 0x8000

    if-gt v10, v0, :cond_c

    .line 155
    iget-object v0, v11, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v21

    .line 156
    .local v21, "debugEnabled":Z
    const/4 v7, 0x6

    if-eqz v21, :cond_0

    .line 157
    iget-object v0, v11, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v12, v1, v15

    aput-object v13, v1, v20

    aput-object v16, v1, v19

    aput-object v17, v1, v8

    aput-object v18, v1, v9

    .line 158
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 157
    const-string v2, "processAuthDataRequest({})[{}] SSH_MSG_USERAUTH_INFO_REQUEST name={}, instruction={}, language={}, num-prompts={}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_0
    if-lez v10, :cond_1

    iget-object v0, v11, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->trialsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_0

    :cond_1
    iget-object v0, v11, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->emptyCount:Ljava/util/concurrent/atomic/AtomicInteger;

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    move v4, v0

    .line 163
    .local v4, "retriesCount":I
    iget v5, v11, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->maxTrials:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->verifyTrialsCount(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    return v15

    .line 167
    :cond_2
    if-lez v10, :cond_3

    new-array v0, v10, [Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 168
    .local v0, "prompt":[Ljava/lang/String;
    :goto_1
    if-lez v10, :cond_4

    new-array v1, v10, [Z

    goto :goto_2

    :cond_4
    sget-object v1, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 169
    .local v1, "echo":[Z
    :goto_2
    iget-object v2, v11, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    .line 170
    .local v2, "traceEnabled":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v10, :cond_6

    .line 172
    invoke-virtual/range {p3 .. p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 173
    invoke-virtual/range {p3 .. p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBoolean()Z

    move-result v5

    aput-boolean v5, v1, v3

    .line 175
    if-eqz v2, :cond_5

    .line 176
    iget-object v5, v11, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v12, v7, v15

    aput-object v13, v7, v20

    aput-object v16, v7, v19

    add-int/lit8 v23, v3, 0x1

    .line 177
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v7, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v7, v9

    aget-boolean v23, v1, v3

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v7, v6

    aget-object v23, v0, v3

    const/16 v22, 0x6

    aput-object v23, v7, v22

    .line 176
    const-string v8, "processAuthDataRequest({})[{}]({}) {}/{}: echo={}, prompt={}"

    invoke-interface {v5, v8, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 175
    :cond_5
    move/from16 v22, v7

    .line 170
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v22

    const/4 v8, 0x3

    goto :goto_3

    .line 181
    .end local v3    # "i":I
    :cond_6
    move-object/from16 v5, p0

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    const/4 v3, 0x3

    move-object/from16 v8, v18

    move-object v9, v0

    move/from16 v25, v10

    .end local v10    # "num":I
    .local v25, "num":I
    move-object v10, v1

    invoke-virtual/range {v5 .. v10}, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->getUserResponses(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "rep":[Ljava/lang/String;
    if-nez v5, :cond_8

    .line 183
    if-eqz v21, :cond_7

    .line 184
    iget-object v6, v11, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v12, v3, v15

    aput-object v13, v3, v20

    aput-object v16, v3, v19

    const-string v7, "processAuthDataRequest({})[{}] no responses for {}"

    invoke-interface {v6, v7, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_7
    return v15

    .line 198
    :cond_8
    array-length v6, v5

    move/from16 v7, v25

    .end local v25    # "num":I
    .local v7, "num":I
    if-eq v7, v6, :cond_9

    .line 199
    iget-object v6, v11, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v12, v9, v15

    aput-object v13, v9, v20

    .line 200
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v19

    array-length v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    .line 199
    const-string v10, "processAuthDataRequest({})[{}] Mismatched prompts ({}) vs. responses count ({})"

    invoke-interface {v6, v10, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 198
    :cond_9
    const/4 v8, 0x4

    .line 203
    :goto_5
    array-length v6, v5

    .line 204
    .local v6, "numResponses":I
    const/16 v9, 0x3d

    mul-int/lit8 v10, v6, 0x40

    add-int/lit8 v10, v10, 0x8

    invoke-interface {v12, v9, v10}, Lorg/apache/sshd/client/session/ClientSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v9

    .line 206
    .end local p3    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v9, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    move v10, v4

    .end local v4    # "retriesCount":I
    .local v10, "retriesCount":I
    int-to-long v3, v6

    invoke-virtual {v9, v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 207
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_6
    if-ge v3, v6, :cond_b

    .line 208
    aget-object v4, v5, v3

    .line 209
    .local v4, "r":Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 210
    move-object/from16 v22, v0

    .end local v0    # "prompt":[Ljava/lang/String;
    .local v22, "prompt":[Ljava/lang/String;
    iget-object v0, v11, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    move-object/from16 v24, v1

    .end local v1    # "echo":[Z
    .local v24, "echo":[Z
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v12, v1, v15

    aput-object v13, v1, v20

    add-int/lit8 v25, v3, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v1, v19

    const/16 v23, 0x3

    aput-object v4, v1, v23

    const-string v8, "processAuthDataRequest({})[{}] response #{}: {}"

    invoke-interface {v0, v8, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    .line 209
    .end local v22    # "prompt":[Ljava/lang/String;
    .end local v24    # "echo":[Z
    .restart local v0    # "prompt":[Ljava/lang/String;
    .restart local v1    # "echo":[Z
    :cond_a
    move-object/from16 v22, v0

    move-object/from16 v24, v1

    .line 212
    .end local v0    # "prompt":[Ljava/lang/String;
    .end local v1    # "echo":[Z
    .restart local v22    # "prompt":[Ljava/lang/String;
    .restart local v24    # "echo":[Z
    :goto_7
    invoke-virtual {v9, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 207
    .end local v4    # "r":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    const/4 v8, 0x4

    goto :goto_6

    .line 215
    .end local v3    # "index":I
    .end local v22    # "prompt":[Ljava/lang/String;
    .end local v24    # "echo":[Z
    .restart local v0    # "prompt":[Ljava/lang/String;
    .restart local v1    # "echo":[Z
    :cond_b
    invoke-interface {v12, v9}, Lorg/apache/sshd/client/session/ClientSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 216
    return v20

    .line 149
    .end local v0    # "prompt":[Ljava/lang/String;
    .end local v1    # "echo":[Z
    .end local v2    # "traceEnabled":Z
    .end local v5    # "rep":[Ljava/lang/String;
    .end local v6    # "numResponses":I
    .end local v7    # "num":I
    .end local v9    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v21    # "debugEnabled":Z
    .local v10, "num":I
    .restart local p3    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_c
    move v7, v10

    .line 150
    .end local v10    # "num":I
    .restart local v7    # "num":I
    iget-object v0, v11, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v12, v1, v15

    aput-object v13, v1, v20

    .line 151
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v19

    const/4 v2, 0x3

    aput-object v16, v1, v2

    const/4 v2, 0x4

    aput-object v17, v1, v2

    .line 150
    const-string v2, "processAuthDataRequest({})[{}] illogical challenges count ({}) for name={}, instruction={}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illogical challenges count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    .end local v7    # "num":I
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "instruction":Ljava/lang/String;
    .end local v18    # "lang":Ljava/lang/String;
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processAuthDataRequest("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] received unknown packet: cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    invoke-static {v14}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected sendAuthDataRequest(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)Z
    .locals 13
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->getName()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 100
    .local v1, "debugEnabled":Z
    iget-object v2, p0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->requestPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    .line 101
    if-eqz v1, :cond_0

    .line 102
    iget-object v2, p0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object p2, v4, v5

    aput-object v0, v4, v3

    const-string v3, "sendAuthDataRequest({})[{}] no reply for previous request for {}"

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_0
    return v6

    .line 108
    :cond_1
    const/16 v10, 0x32

    iget-object v2, p0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->trialsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    iget v12, p0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->maxTrials:I

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-virtual/range {v7 .. v12}, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->verifyTrialsCount(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;III)Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    return v6

    .line 112
    :cond_2
    invoke-interface {p1}, Lorg/apache/sshd/client/session/ClientSession;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "username":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->getExchangeLanguageTag(Lorg/apache/sshd/client/session/ClientSession;)Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, "lang":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->getExchangeSubMethods(Lorg/apache/sshd/client/session/ClientSession;)Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "subMethods":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 116
    iget-object v9, p0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v6

    aput-object p2, v10, v5

    aput-object v0, v10, v3

    aput-object v7, v10, v4

    const/4 v3, 0x4

    aput-object v8, v10, v3

    const-string v3, "sendAuthDataRequest({})[{}] send SSH_MSG_USERAUTH_REQUEST for {}: lang={}, methods={}"

    invoke-interface {v9, v3, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :cond_3
    const/16 v3, 0x32

    .line 121
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    .line 122
    invoke-static {v7}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v8}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x40

    .line 120
    invoke-interface {p1, v3, v4}, Lorg/apache/sshd/client/session/ClientSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v3

    .line 124
    .local v3, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v3, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v3, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 129
    iget-object v4, p0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->requestPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    invoke-interface {p1, v3}, Lorg/apache/sshd/client/session/ClientSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 131
    return v5
.end method

.method protected useCurrentPassword(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)Z
    .locals 8
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "instruction"    # Ljava/lang/String;
    .param p5, "lang"    # Ljava/lang/String;
    .param p6, "prompt"    # [Ljava/lang/String;
    .param p7, "echo"    # [Z

    .line 331
    invoke-static {p6}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v0

    .line 332
    .local v0, "num":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    if-eqz p2, :cond_4

    aget-boolean v3, p7, v2

    if-eqz v3, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    aget-object v3, p6, v2

    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 341
    const-string/jumbo v4, "user-interaction-password-prompt"

    const-string v5, "password"

    invoke-static {p1, v4, v5}, Lorg/apache/sshd/common/PropertyResolverUtils;->getStringProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "promptList":Ljava/lang/String;
    invoke-static {v3, v4}, Lorg/apache/sshd/client/auth/keyboard/UserInteraction;->findPromptComponentLastPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 345
    .local v5, "passPos":I
    if-gez v5, :cond_1

    .line 346
    return v2

    .line 349
    :cond_1
    const-string/jumbo v6, "user-interaction-check-password-delimiter"

    const-string v7, ":"

    invoke-static {p1, v6, v7}, Lorg/apache/sshd/common/PropertyResolverUtils;->getStringProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, "delimList":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/sshd/common/PropertyResolverUtils;->isNoneValue(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 353
    return v1

    .line 356
    :cond_2
    invoke-static {v3, v6}, Lorg/apache/sshd/client/auth/keyboard/UserInteraction;->findPromptComponentLastPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 357
    .local v7, "sepPos":I
    if-ge v7, v5, :cond_3

    .line 358
    return v2

    .line 361
    :cond_3
    return v1

    .line 333
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "promptList":Ljava/lang/String;
    .end local v5    # "passPos":I
    .end local v6    # "delimList":Ljava/lang/String;
    .end local v7    # "sepPos":I
    :cond_4
    :goto_0
    return v2
.end method

.method protected verifyTrialsCount(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;III)Z
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "cmd"    # I
    .param p4, "nbTrials"    # I
    .param p5, "maxAllowed"    # I

    .line 237
    iget-object v0, p0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v1

    const/4 v4, 0x2

    .line 239
    invoke-static {p3}, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;->getAuthCommandName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 238
    const-string/jumbo v4, "verifyTrialsCount({})[{}] cmd={} - {} out of {}"

    invoke-interface {v0, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :cond_0
    if-gt p4, p5, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method
