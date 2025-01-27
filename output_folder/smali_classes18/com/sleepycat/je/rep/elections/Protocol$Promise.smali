.class public Lcom/sleepycat/je/rep/elections/Protocol$Promise;
.super Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Promise"
.end annotation


# instance fields
.field private acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

.field private highestProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

.field private jeVersion:Lcom/sleepycat/je/JEVersion;

.field private logVersion:I

.field private final priority:I

.field private suggestion:Lcom/sleepycat/je/rep/elections/Protocol$Value;

.field private final suggestionRanking:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

.field final synthetic this$0:Lcom/sleepycat/je/rep/elections/Protocol;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;Lcom/sleepycat/je/rep/elections/Protocol$Value;Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;IILcom/sleepycat/je/JEVersion;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p2, "highestProposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .param p3, "value"    # Lcom/sleepycat/je/rep/elections/Protocol$Value;
    .param p4, "suggestion"    # Lcom/sleepycat/je/rep/elections/Protocol$Value;
    .param p5, "suggestionRanking"    # Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;
    .param p6, "priority"    # I
    .param p7, "logVersion"    # I
    .param p8, "jeVersion"    # Lcom/sleepycat/je/JEVersion;

    .line 167
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->highestProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 149
    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 150
    iput-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestion:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 168
    iput-object p2, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->highestProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 169
    iput-object p3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 170
    iput-object p4, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestion:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 171
    iput-object p5, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestionRanking:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    .line 172
    iput p6, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->priority:I

    .line 173
    iput p7, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->logVersion:I

    .line 174
    iput-object p8, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->jeVersion:Lcom/sleepycat/je/JEVersion;

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Protocol;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Protocol;
    .param p2, "responseLine"    # Ljava/lang/String;
    .param p3, "tokens"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/impl/TextProtocol$InvalidMessageException;
        }
    .end annotation

    .line 178
    move-object v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 180
    invoke-direct/range {p0 .. p3}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/lang/String;[Ljava/lang/String;)V

    .line 148
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->highestProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 149
    iput-object v2, v0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 150
    iput-object v2, v0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestion:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 181
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/rep/elections/Protocol;->access$000(Lcom/sleepycat/je/rep/elections/Protocol;)Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->nextPayloadToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sleepycat/je/rep/elections/Proposer$ProposalParser;->parse(Ljava/lang/String;)Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v2

    iput-object v2, v0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->highestProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 182
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/rep/elections/Protocol;->access$100(Lcom/sleepycat/je/rep/elections/Protocol;)Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->nextPayloadToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;->parse(Ljava/lang/String;)Lcom/sleepycat/je/rep/elections/Protocol$Value;

    move-result-object v2

    iput-object v2, v0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 183
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/rep/elections/Protocol;->access$100(Lcom/sleepycat/je/rep/elections/Protocol;)Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->nextPayloadToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sleepycat/je/rep/elections/Protocol$ValueParser;->parse(Ljava/lang/String;)Lcom/sleepycat/je/rep/elections/Protocol$Value;

    move-result-object v2

    iput-object v2, v0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestion:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 184
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->nextPayloadToken()Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "weight":Ljava/lang/String;
    nop

    .line 186
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->UNINITIALIZED:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    iget-wide v3, v3, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->major:J

    move-wide v6, v3

    goto :goto_0

    .line 188
    :cond_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    move-wide v6, v3

    :goto_0
    nop

    .line 189
    .local v6, "majorRanking":J
    sget-object v3, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->UNINITIALIZED:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    iget-wide v3, v3, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->major:J

    .line 190
    .local v3, "minorRanking":J
    const-wide/16 v8, -0x1

    .line 191
    .local v8, "nodeId":J
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->nextPayloadToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->priority:I

    .line 192
    iget-object v5, v0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->sendVersion:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/sleepycat/je/rep/elections/Protocol;->getMajorVersionNumber(Ljava/lang/String;)I

    move-result v5

    const/4 v10, 0x1

    if-le v5, v10, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->nextPayloadToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->logVersion:I

    .line 194
    new-instance v5, Lcom/sleepycat/je/JEVersion;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->nextPayloadToken()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/sleepycat/je/JEVersion;-><init>(Ljava/lang/String;)V

    iput-object v5, v0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->jeVersion:Lcom/sleepycat/je/JEVersion;

    .line 195
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->nextPayloadToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->nextPayloadToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide v12, v8

    goto :goto_1

    .line 202
    :cond_2
    move-wide v12, v8

    goto :goto_1

    .line 192
    :cond_3
    move-wide v12, v8

    .line 211
    .end local v8    # "nodeId":J
    .local v12, "nodeId":J
    :goto_1
    new-instance v14, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    move-object v5, v14

    move-wide v8, v3

    move-wide v10, v12

    invoke-direct/range {v5 .. v11}, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;-><init>(JJJ)V

    iput-object v14, v0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestionRanking:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    .line 212
    return-void
.end method

.method private getOuterType()Lcom/sleepycat/je/rep/elections/Protocol;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 244
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 245
    return v0

    .line 248
    :cond_0
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 249
    return v2

    .line 252
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v1, v3, :cond_2

    .line 253
    return v2

    .line 256
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/rep/elections/Protocol$Promise;

    .line 257
    .local v1, "other":Lcom/sleepycat/je/rep/elections/Protocol$Promise;
    invoke-direct {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getOuterType()Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v3

    invoke-direct {v1}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getOuterType()Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 258
    return v2

    .line 261
    :cond_3
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    if-nez v3, :cond_4

    .line 262
    iget-object v3, v1, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    if-eqz v3, :cond_5

    .line 263
    return v2

    .line 265
    :cond_4
    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 266
    return v2

    .line 269
    :cond_5
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->highestProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-nez v3, :cond_6

    .line 270
    iget-object v3, v1, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->highestProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-eqz v3, :cond_7

    .line 271
    return v2

    .line 273
    :cond_6
    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->highestProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 274
    return v2

    .line 277
    :cond_7
    iget v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->priority:I

    iget v4, v1, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->priority:I

    if-eq v3, v4, :cond_8

    .line 278
    return v2

    .line 281
    :cond_8
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->sendVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/elections/Protocol;->getMajorVersionNumber(Ljava/lang/String;)I

    move-result v3

    if-le v3, v0, :cond_a

    .line 282
    iget v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->logVersion:I

    iget v4, v1, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->logVersion:I

    if-eq v3, v4, :cond_9

    .line 283
    return v2

    .line 286
    :cond_9
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->jeVersion:Lcom/sleepycat/je/JEVersion;

    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->jeVersion:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/JEVersion;->compareTo(Lcom/sleepycat/je/JEVersion;)I

    move-result v3

    if-eqz v3, :cond_a

    .line 287
    return v2

    .line 291
    :cond_a
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestion:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    if-nez v3, :cond_b

    .line 292
    iget-object v3, v1, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestion:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    if-eqz v3, :cond_c

    .line 293
    return v2

    .line 295
    :cond_b
    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestion:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 296
    return v2

    .line 299
    :cond_c
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestionRanking:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestionRanking:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 300
    return v2

    .line 303
    :cond_d
    return v0
.end method

.method getAcceptedValue()Lcom/sleepycat/je/rep/elections/Protocol$Value;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    return-object v0
.end method

.method getHighestProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->highestProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    return-object v0
.end method

.method getJEVersion()Lcom/sleepycat/je/JEVersion;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->jeVersion:Lcom/sleepycat/je/JEVersion;

    return-object v0
.end method

.method getLogVersion()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->logVersion:I

    return v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v0, v0, Lcom/sleepycat/je/rep/elections/Protocol;->PROMISE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    return-object v0
.end method

.method getPriority()I
    .locals 1

    .line 352
    iget v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->priority:I

    return v0
.end method

.method getSuggestion()Lcom/sleepycat/je/rep/elections/Protocol$Value;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestion:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    return-object v0
.end method

.method getSuggestionRanking()Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestionRanking:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 221
    const/16 v0, 0x1f

    .line 222
    .local v0, "prime":I
    invoke-super {p0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->hashCode()I

    move-result v1

    .line 223
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-direct {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getOuterType()Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 224
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v1, v3

    .line 226
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->highestProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    .line 229
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    .line 230
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->priority:I

    add-int/2addr v1, v3

    .line 231
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestion:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    if-nez v3, :cond_2

    goto :goto_2

    .line 232
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v2, v4

    .line 233
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestionRanking:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 235
    .end local v2    # "result":I
    .restart local v1    # "result":I
    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->sendVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/elections/Protocol;->getMajorVersionNumber(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 236
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->logVersion:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->jeVersion:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v3}, Lcom/sleepycat/je/JEVersion;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 239
    :cond_3
    return v1
.end method

.method public wireFormat()Ljava/lang/String;
    .locals 8

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->wireFormatPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->highestProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    const-string v3, ""

    if-eqz v2, :cond_0

    .line 312
    invoke-interface {v2}, Lcom/sleepycat/je/rep/elections/Proposer$Proposal;->wireFormat()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    if-eqz v2, :cond_1

    .line 315
    invoke-interface {v2}, Lcom/sleepycat/je/rep/elections/Protocol$Value;->wireFormat()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestion:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    if-eqz v2, :cond_2

    .line 317
    invoke-interface {v2}, Lcom/sleepycat/je/rep/elections/Protocol$Value;->wireFormat()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestionRanking:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    iget-wide v4, v2, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->major:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestionRanking:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    iget-wide v2, v2, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->major:J

    .line 321
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->priority:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "line":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->this$0:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->sendVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/elections/Protocol;->getMajorVersionNumber(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->logVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->jeVersion:Lcom/sleepycat/je/JEVersion;

    .line 327
    invoke-virtual {v3}, Lcom/sleepycat/je/JEVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestionRanking:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    iget-wide v3, v3, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->minor:J

    .line 328
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->suggestionRanking:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    iget-wide v2, v2, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->id:J

    .line 329
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_4
    return-object v0
.end method
