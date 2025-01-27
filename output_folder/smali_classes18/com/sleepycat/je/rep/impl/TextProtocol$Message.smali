.class public abstract Lcom/sleepycat/je/rep/impl/TextProtocol$Message;
.super Ljava/lang/Object;
.source "TextProtocol.java"

# interfaces
.implements Lcom/sleepycat/je/rep/impl/TextProtocol$WireFormatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/TextProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Message"
.end annotation


# instance fields
.field private currToken:I

.field private final line:Ljava/lang/String;

.field protected messagePrefixNocheck:Ljava/lang/String;

.field protected sendVersion:Ljava/lang/String;

.field private senderId:I

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

.field private final tokens:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 427
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->senderId:I

    .line 419
    sget-object v0, Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;->FIRST_PAYLOAD_TOKEN:Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->currToken:I

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->line:Ljava/lang/String;

    .line 429
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->tokens:[Ljava/lang/String;

    .line 430
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$100(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->setSendVersion(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/TextProtocol;
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 444
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->senderId:I

    .line 419
    sget-object v0, Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;->FIRST_PAYLOAD_TOKEN:Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->currToken:I

    .line 446
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->line:Ljava/lang/String;

    .line 447
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->tokens:[Ljava/lang/String;

    .line 450
    sget-object v0, Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;->VERSION_TOKEN:Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;

    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->getTokenString(Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "version":Ljava/lang/String;
    new-instance v1, Ljava/lang/Double;

    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$100(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    const-string v2, ", in message: "

    if-ltz v1, :cond_3

    .line 464
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->setSendVersion(Ljava/lang/String;)V

    .line 466
    sget-object v1, Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;->NAME_TOKEN:Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;

    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->getTokenString(Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;)Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "messageGroupName":Ljava/lang/String;
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$200(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 475
    new-instance v3, Ljava/lang/Integer;

    sget-object v4, Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;->ID_TOKEN:Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;

    .line 476
    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->getTokenString(Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->senderId:I

    .line 477
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$300(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 478
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$300(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 479
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$400(Lcom/sleepycat/je/rep/impl/TextProtocol;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v3

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->senderId:I

    if-eq v3, v4, :cond_1

    .line 481
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$400(Lcom/sleepycat/je/rep/impl/TextProtocol;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 482
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$300(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/util/Set;

    move-result-object v3

    iget v4, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->senderId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    new-instance v3, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;

    sget-object v4, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->NOT_A_MEMBER:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sender\'s member id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->senderId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", message op: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;->OP_TOKEN:Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;

    .line 486
    invoke-direct {p0, v6}, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->getTokenString(Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", was not a member of the group: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 487
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$300(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;Ljava/lang/String;)V

    throw v3

    .line 490
    :cond_1
    :goto_0
    return-void

    .line 468
    :cond_2
    new-instance v3, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;

    sget-object v4, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->GROUP_MISMATCH:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Group name mismatch; this group name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 470
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$200(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", message group name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;Ljava/lang/String;)V

    throw v3

    .line 452
    .end local v1    # "messageGroupName":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;

    sget-object v3, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->VERSION_MISMATCH:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version argument mismatch. Expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 455
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$100(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;Ljava/lang/String;)V

    throw v1
.end method

.method private getTokenString(Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;)Ljava/lang/String;
    .locals 3
    .param p1, "tokenType"    # Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;

    .line 541
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$TOKENS;->ordinal()I

    move-result v0

    .line 542
    .local v0, "index":I
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->tokens:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 547
    aget-object v1, v1, v0

    return-object v1

    .line 543
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad format; missing token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "at position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "in message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->line:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method protected getCurrentTokenPosition()I
    .locals 1

    .line 578
    iget v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->currToken:I

    return v0
.end method

.method protected getMessagePrefix()Ljava/lang/String;
    .locals 3

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->sendVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$200(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 522
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$400(Lcom/sleepycat/je/rep/impl/TextProtocol;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    return-object v0
.end method

.method public abstract getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
.end method

.method public getProtocol()Lcom/sleepycat/je/rep/impl/TextProtocol;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    return-object v0
.end method

.method public getSendVersion()Ljava/lang/String;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->sendVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()I
    .locals 1

    .line 493
    iget v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->senderId:I

    return v0
.end method

.method protected hasMoreTokens()Z
    .locals 2

    .line 569
    iget v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->currToken:I

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->tokens:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected nextPayloadToken()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 559
    iget v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->currToken:I

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->tokens:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 565
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->currToken:I

    aget-object v0, v1, v0

    return-object v0

    .line 560
    :cond_0
    new-instance v0, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;

    sget-object v1, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;->BAD_FORMAT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad format; missing token at position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->currToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", in message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->line:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageError;Ljava/lang/String;)V

    throw v0
.end method

.method public setSendVersion(Ljava/lang/String;)V
    .locals 4
    .param p1, "version"    # Ljava/lang/String;

    .line 502
    new-instance v0, Ljava/lang/Double;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$100(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, p1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->sendVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->sendVersion:Ljava/lang/String;

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->sendVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v1, v1, Lcom/sleepycat/je/rep/impl/TextProtocol;->messageNocheckSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->messagePrefixNocheck:Ljava/lang/String;

    .line 513
    :cond_0
    return-void

    .line 503
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shouldn\'t be larger than the current version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/TextProtocol$Message;->this$0:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 505
    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/TextProtocol;->access$100(Lcom/sleepycat/je/rep/impl/TextProtocol;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
