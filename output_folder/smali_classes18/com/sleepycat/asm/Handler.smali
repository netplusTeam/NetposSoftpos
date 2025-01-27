.class Lcom/sleepycat/asm/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# instance fields
.field desc:Ljava/lang/String;

.field end:Lcom/sleepycat/asm/Label;

.field handler:Lcom/sleepycat/asm/Label;

.field next:Lcom/sleepycat/asm/Handler;

.field start:Lcom/sleepycat/asm/Label;

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static remove(Lcom/sleepycat/asm/Handler;Lcom/sleepycat/asm/Label;Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Handler;
    .locals 6
    .param p0, "h"    # Lcom/sleepycat/asm/Handler;
    .param p1, "start"    # Lcom/sleepycat/asm/Label;
    .param p2, "end"    # Lcom/sleepycat/asm/Label;

    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/asm/Handler;->next:Lcom/sleepycat/asm/Handler;

    invoke-static {v0, p1, p2}, Lcom/sleepycat/asm/Handler;->remove(Lcom/sleepycat/asm/Handler;Lcom/sleepycat/asm/Label;Lcom/sleepycat/asm/Label;)Lcom/sleepycat/asm/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/asm/Handler;->next:Lcom/sleepycat/asm/Handler;

    .line 89
    iget-object v0, p0, Lcom/sleepycat/asm/Handler;->start:Lcom/sleepycat/asm/Label;

    iget v0, v0, Lcom/sleepycat/asm/Label;->position:I

    .line 90
    .local v0, "hstart":I
    iget-object v1, p0, Lcom/sleepycat/asm/Handler;->end:Lcom/sleepycat/asm/Label;

    iget v1, v1, Lcom/sleepycat/asm/Label;->position:I

    .line 91
    .local v1, "hend":I
    iget v2, p1, Lcom/sleepycat/asm/Label;->position:I

    .line 92
    .local v2, "s":I
    if-nez p2, :cond_1

    const v3, 0x7fffffff

    goto :goto_0

    :cond_1
    iget v3, p2, Lcom/sleepycat/asm/Label;->position:I

    .line 94
    .local v3, "e":I
    :goto_0
    if-ge v2, v1, :cond_5

    if-le v3, v0, :cond_5

    .line 95
    if-gt v2, v0, :cond_3

    .line 96
    if-lt v3, v1, :cond_2

    .line 98
    iget-object p0, p0, Lcom/sleepycat/asm/Handler;->next:Lcom/sleepycat/asm/Handler;

    goto :goto_1

    .line 101
    :cond_2
    iput-object p2, p0, Lcom/sleepycat/asm/Handler;->start:Lcom/sleepycat/asm/Label;

    goto :goto_1

    .line 103
    :cond_3
    if-lt v3, v1, :cond_4

    .line 105
    iput-object p1, p0, Lcom/sleepycat/asm/Handler;->end:Lcom/sleepycat/asm/Label;

    goto :goto_1

    .line 108
    :cond_4
    new-instance v4, Lcom/sleepycat/asm/Handler;

    invoke-direct {v4}, Lcom/sleepycat/asm/Handler;-><init>()V

    .line 109
    .local v4, "g":Lcom/sleepycat/asm/Handler;
    iput-object p2, v4, Lcom/sleepycat/asm/Handler;->start:Lcom/sleepycat/asm/Label;

    .line 110
    iget-object v5, p0, Lcom/sleepycat/asm/Handler;->end:Lcom/sleepycat/asm/Label;

    iput-object v5, v4, Lcom/sleepycat/asm/Handler;->end:Lcom/sleepycat/asm/Label;

    .line 111
    iget-object v5, p0, Lcom/sleepycat/asm/Handler;->handler:Lcom/sleepycat/asm/Label;

    iput-object v5, v4, Lcom/sleepycat/asm/Handler;->handler:Lcom/sleepycat/asm/Label;

    .line 112
    iget-object v5, p0, Lcom/sleepycat/asm/Handler;->desc:Ljava/lang/String;

    iput-object v5, v4, Lcom/sleepycat/asm/Handler;->desc:Ljava/lang/String;

    .line 113
    iget v5, p0, Lcom/sleepycat/asm/Handler;->type:I

    iput v5, v4, Lcom/sleepycat/asm/Handler;->type:I

    .line 114
    iget-object v5, p0, Lcom/sleepycat/asm/Handler;->next:Lcom/sleepycat/asm/Handler;

    iput-object v5, v4, Lcom/sleepycat/asm/Handler;->next:Lcom/sleepycat/asm/Handler;

    .line 115
    iput-object p1, p0, Lcom/sleepycat/asm/Handler;->end:Lcom/sleepycat/asm/Label;

    .line 116
    iput-object v4, p0, Lcom/sleepycat/asm/Handler;->next:Lcom/sleepycat/asm/Handler;

    .line 119
    .end local v4    # "g":Lcom/sleepycat/asm/Handler;
    :cond_5
    :goto_1
    return-object p0
.end method
