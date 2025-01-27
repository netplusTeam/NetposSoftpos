.class public Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;
.super Ljava/lang/Object;
.source "Acceptor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ranking"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;",
        ">;"
    }
.end annotation


# static fields
.field static UNINITIALIZED:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;


# instance fields
.field final id:J

.field final major:J

.field final minor:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 277
    new-instance v7, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    const-wide/high16 v1, -0x8000000000000000L

    const-wide/high16 v3, -0x8000000000000000L

    const-wide/16 v5, -0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;-><init>(JJJ)V

    sput-object v7, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->UNINITIALIZED:Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2
    .param p1, "major"    # J
    .param p3, "minor"    # J

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-wide p1, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->major:J

    .line 290
    iput-wide p3, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->minor:J

    .line 291
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->id:J

    .line 292
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0
    .param p1, "major"    # J
    .param p3, "minor"    # J
    .param p5, "id"    # J

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-wide p1, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->major:J

    .line 284
    iput-wide p3, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->minor:J

    .line 285
    iput-wide p5, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->id:J

    .line 286
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;)I
    .locals 5
    .param p1, "o"    # Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    .line 337
    iget-wide v0, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->major:J

    iget-wide v2, p1, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->major:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 338
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 339
    return v0

    .line 341
    :cond_0
    iget-wide v1, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->minor:J

    iget-wide v3, p1, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->minor:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 268
    check-cast p1, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->compareTo(Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 306
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 307
    return v0

    .line 309
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 310
    return v1

    .line 312
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 313
    return v1

    .line 315
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;

    .line 316
    .local v2, "other":Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;
    iget-wide v3, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->major:J

    iget-wide v5, v2, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->major:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 317
    return v1

    .line 319
    :cond_3
    iget-wide v3, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->minor:J

    iget-wide v5, v2, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->minor:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 320
    return v1

    .line 323
    :cond_4
    iget-wide v3, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->id:J

    iget-wide v5, v2, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->id:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 324
    return v1

    .line 326
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 296
    const/16 v0, 0x1f

    .line 297
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 298
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->major:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 299
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-wide v3, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->minor:J

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v1, v3

    .line 300
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->id:J

    long-to-int v3, v3

    add-int/2addr v2, v3

    .line 301
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ranking major:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->major:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->minor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/rep/elections/Acceptor$SuggestionGenerator$Ranking;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
