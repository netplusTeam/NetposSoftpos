.class public Lcom/sleepycat/je/util/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/util/Splitter$StateType;
    }
.end annotation


# static fields
.field private static final ESCAPECHAR:C = '\\'

.field private static final QUOTECHAR:C = '\"'


# instance fields
.field private curIndex:I

.field private final delimiter:C

.field private prevState:Lcom/sleepycat/je/util/Splitter$StateType;

.field private row:Ljava/lang/String;

.field private startIndex:I

.field private state:Lcom/sleepycat/je/util/Splitter$StateType;

.field private final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(C)V
    .locals 1
    .param p1, "delimiter"    # C

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/util/Splitter;->tokens:Ljava/util/List;

    .line 39
    iput-char p1, p0, Lcom/sleepycat/je/util/Splitter;->delimiter:C

    .line 40
    return-void
.end method

.method private isDelimiter(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 96
    iget-char v0, p0, Lcom/sleepycat/je/util/Splitter;->delimiter:C

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEscape(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 92
    const/16 v0, 0x5c

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isQuote(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 88
    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isQuoteState()Z
    .locals 2

    .line 108
    iget v0, p0, Lcom/sleepycat/je/util/Splitter;->startIndex:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/sleepycat/je/util/Splitter;->curIndex:I

    if-ge v0, v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/sleepycat/je/util/Splitter;->row:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const/4 v1, 0x0

    return v1

    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private outputToken()V
    .locals 4

    .line 100
    iget v0, p0, Lcom/sleepycat/je/util/Splitter;->startIndex:I

    iget v1, p0, Lcom/sleepycat/je/util/Splitter;->curIndex:I

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v2, p0, Lcom/sleepycat/je/util/Splitter;->tokens:Ljava/util/List;

    iget-object v3, p0, Lcom/sleepycat/je/util/Splitter;->row:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/util/Splitter;->tokens:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_0
    return-void
.end method


# virtual methods
.method public tokenize(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "inrow"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/sleepycat/je/util/Splitter;->row:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/sleepycat/je/util/Splitter$StateType;->COLLECT:Lcom/sleepycat/je/util/Splitter$StateType;

    iput-object v0, p0, Lcom/sleepycat/je/util/Splitter;->state:Lcom/sleepycat/je/util/Splitter$StateType;

    .line 45
    iget-object v0, p0, Lcom/sleepycat/je/util/Splitter;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/util/Splitter;->startIndex:I

    .line 47
    iput v0, p0, Lcom/sleepycat/je/util/Splitter;->curIndex:I

    .line 48
    const/4 v0, 0x0

    .local v0, "cur":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/util/Splitter;->row:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 49
    iget-object v1, p0, Lcom/sleepycat/je/util/Splitter;->row:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 50
    .local v1, "c":C
    sget-object v2, Lcom/sleepycat/je/util/Splitter$1;->$SwitchMap$com$sleepycat$je$util$Splitter$StateType:[I

    iget-object v3, p0, Lcom/sleepycat/je/util/Splitter;->state:Lcom/sleepycat/je/util/Splitter$StateType;

    invoke-virtual {v3}, Lcom/sleepycat/je/util/Splitter$StateType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    .line 71
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/sleepycat/je/util/Splitter;->isEscape(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/sleepycat/je/util/Splitter;->state:Lcom/sleepycat/je/util/Splitter$StateType;

    iput-object v2, p0, Lcom/sleepycat/je/util/Splitter;->prevState:Lcom/sleepycat/je/util/Splitter$StateType;

    .line 73
    sget-object v2, Lcom/sleepycat/je/util/Splitter$StateType;->COLLECTANY:Lcom/sleepycat/je/util/Splitter$StateType;

    iput-object v2, p0, Lcom/sleepycat/je/util/Splitter;->state:Lcom/sleepycat/je/util/Splitter$StateType;

    goto :goto_1

    .line 74
    :cond_0
    invoke-direct {p0, v1}, Lcom/sleepycat/je/util/Splitter;->isQuote(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    sget-object v2, Lcom/sleepycat/je/util/Splitter$StateType;->COLLECT:Lcom/sleepycat/je/util/Splitter$StateType;

    iput-object v2, p0, Lcom/sleepycat/je/util/Splitter;->state:Lcom/sleepycat/je/util/Splitter$StateType;

    .line 77
    :cond_1
    :goto_1
    iget v2, p0, Lcom/sleepycat/je/util/Splitter;->curIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sleepycat/je/util/Splitter;->curIndex:I

    goto :goto_3

    .line 67
    :pswitch_1
    iget v2, p0, Lcom/sleepycat/je/util/Splitter;->curIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sleepycat/je/util/Splitter;->curIndex:I

    .line 68
    iget-object v2, p0, Lcom/sleepycat/je/util/Splitter;->prevState:Lcom/sleepycat/je/util/Splitter$StateType;

    iput-object v2, p0, Lcom/sleepycat/je/util/Splitter;->state:Lcom/sleepycat/je/util/Splitter$StateType;

    .line 69
    goto :goto_3

    .line 52
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/sleepycat/je/util/Splitter;->isDelimiter(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    invoke-direct {p0}, Lcom/sleepycat/je/util/Splitter;->outputToken()V

    .line 54
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sleepycat/je/util/Splitter;->startIndex:I

    .line 55
    iput v2, p0, Lcom/sleepycat/je/util/Splitter;->curIndex:I

    goto :goto_3

    .line 57
    :cond_2
    invoke-direct {p0, v1}, Lcom/sleepycat/je/util/Splitter;->isQuote(C)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/sleepycat/je/util/Splitter;->isQuoteState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    sget-object v2, Lcom/sleepycat/je/util/Splitter$StateType;->QUOTE:Lcom/sleepycat/je/util/Splitter$StateType;

    iput-object v2, p0, Lcom/sleepycat/je/util/Splitter;->state:Lcom/sleepycat/je/util/Splitter$StateType;

    goto :goto_2

    .line 59
    :cond_3
    invoke-direct {p0, v1}, Lcom/sleepycat/je/util/Splitter;->isEscape(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 60
    iget-object v2, p0, Lcom/sleepycat/je/util/Splitter;->state:Lcom/sleepycat/je/util/Splitter$StateType;

    iput-object v2, p0, Lcom/sleepycat/je/util/Splitter;->prevState:Lcom/sleepycat/je/util/Splitter$StateType;

    .line 61
    sget-object v2, Lcom/sleepycat/je/util/Splitter$StateType;->COLLECTANY:Lcom/sleepycat/je/util/Splitter$StateType;

    iput-object v2, p0, Lcom/sleepycat/je/util/Splitter;->state:Lcom/sleepycat/je/util/Splitter$StateType;

    .line 63
    :cond_4
    :goto_2
    iget v2, p0, Lcom/sleepycat/je/util/Splitter;->curIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sleepycat/je/util/Splitter;->curIndex:I

    .line 65
    nop

    .line 48
    .end local v1    # "c":C
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "cur":I
    :cond_5
    invoke-direct {p0}, Lcom/sleepycat/je/util/Splitter;->outputToken()V

    .line 82
    iget-object v0, p0, Lcom/sleepycat/je/util/Splitter;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 83
    .local v0, "retvals":[Ljava/lang/String;
    iget-object v1, p0, Lcom/sleepycat/je/util/Splitter;->tokens:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 84
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
