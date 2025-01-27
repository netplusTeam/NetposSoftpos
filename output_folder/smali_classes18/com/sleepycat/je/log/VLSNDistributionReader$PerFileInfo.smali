.class Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;
.super Ljava/lang/Object;
.source "VLSNDistributionReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/VLSNDistributionReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerFileInfo"
.end annotation


# instance fields
.field private count:I

.field private final fileNum:J

.field private firstVLSNInFile:Lcom/sleepycat/je/utilint/VLSN;

.field private lastVLSNInFile:Lcom/sleepycat/je/utilint/VLSN;

.field final synthetic this$0:Lcom/sleepycat/je/log/VLSNDistributionReader;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/log/VLSNDistributionReader;J)V
    .locals 0
    .param p2, "fileNum"    # J

    .line 136
    iput-object p1, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->this$0:Lcom/sleepycat/je/log/VLSNDistributionReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-wide p2, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->fileNum:J

    .line 138
    return-void
.end method


# virtual methods
.method display()V
    .locals 5

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "inbetweenCount":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->this$0:Lcom/sleepycat/je/log/VLSNDistributionReader;

    invoke-static {v1}, Lcom/sleepycat/je/log/VLSNDistributionReader;->access$000(Lcom/sleepycat/je/log/VLSNDistributionReader;)I

    move-result v1

    iget-object v2, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->this$0:Lcom/sleepycat/je/log/VLSNDistributionReader;

    invoke-static {v2}, Lcom/sleepycat/je/log/VLSNDistributionReader;->access$100(Lcom/sleepycat/je/log/VLSNDistributionReader;)[Ljava/lang/Long;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 163
    iget-object v1, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->this$0:Lcom/sleepycat/je/log/VLSNDistributionReader;

    invoke-static {v1}, Lcom/sleepycat/je/log/VLSNDistributionReader;->access$100(Lcom/sleepycat/je/log/VLSNDistributionReader;)[Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->this$0:Lcom/sleepycat/je/log/VLSNDistributionReader;

    invoke-static {v2}, Lcom/sleepycat/je/log/VLSNDistributionReader;->access$000(Lcom/sleepycat/je/log/VLSNDistributionReader;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 165
    .local v1, "whichFile":J
    iget-wide v3, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->fileNum:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 166
    goto :goto_1

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->this$0:Lcom/sleepycat/je/log/VLSNDistributionReader;

    invoke-static {v3}, Lcom/sleepycat/je/log/VLSNDistributionReader;->access$008(Lcom/sleepycat/je/log/VLSNDistributionReader;)I

    .line 169
    nop

    .end local v1    # "whichFile":J
    add-int/lit8 v0, v0, 0x1

    .line 170
    goto :goto_0

    .line 172
    :cond_1
    :goto_1
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 173
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 175
    :cond_2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method increment(Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 1
    .param p1, "currentVLSN"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 145
    iget v0, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->count:I

    .line 146
    iget-object v0, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->firstVLSNInFile:Lcom/sleepycat/je/utilint/VLSN;

    if-nez v0, :cond_0

    .line 147
    iput-object p1, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->firstVLSNInFile:Lcom/sleepycat/je/utilint/VLSN;

    .line 149
    :cond_0
    iput-object p1, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->lastVLSNInFile:Lcom/sleepycat/je/utilint/VLSN;

    .line 150
    return-void
.end method

.method public isFileSame(J)Z
    .locals 2
    .param p1, "currentFile"    # J

    .line 141
    iget-wide v0, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->fileNum:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->fileNum:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numRepRecords = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " firstVLSN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->firstVLSNInFile:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastVLSN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->lastVLSNInFile:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
