.class public Lbsh/Parser;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Lbsh/ParserTreeConstants;
.implements Lbsh/ParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/Parser$JJCalls;,
        Lbsh/Parser$LookaheadSuccess;
    }
.end annotation


# static fields
.field private static jj_la1_0:[I

.field private static jj_la1_1:[I

.field private static jj_la1_2:[I

.field private static jj_la1_3:[I

.field private static jj_la1_4:[I


# instance fields
.field private final jj_2_rtns:[Lbsh/Parser$JJCalls;

.field private jj_endpos:I

.field private jj_expentries:Ljava/util/Vector;

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field jj_input_stream:Lbsh/JavaCharStream;

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lbsh/Token;

.field private jj_lasttokens:[I

.field private final jj_ls:Lbsh/Parser$LookaheadSuccess;

.field public jj_nt:Lbsh/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lbsh/Token;

.field private jj_semLA:Z

.field protected jjtree:Lbsh/JJTParserState;

.field public lookingAhead:Z

.field retainComments:Z

.field public token:Lbsh/Token;

.field public token_source:Lbsh/ParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 5870
    invoke-static {}, Lbsh/Parser;->jj_la1_0()V

    .line 5871
    invoke-static {}, Lbsh/Parser;->jj_la1_1()V

    .line 5872
    invoke-static {}, Lbsh/Parser;->jj_la1_2()V

    .line 5873
    invoke-static {}, Lbsh/Parser;->jj_la1_3()V

    .line 5874
    invoke-static {}, Lbsh/Parser;->jj_la1_4()V

    .line 5875
    return-void
.end method

.method public constructor <init>(Lbsh/ParserTokenManager;)V
    .locals 4
    .param p1, "tm"    # Lbsh/ParserTokenManager;

    .line 5937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lbsh/JJTParserState;

    invoke-direct {v0}, Lbsh/JJTParserState;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/Parser;->retainComments:Z

    .line 5860
    iput-boolean v0, p0, Lbsh/Parser;->lookingAhead:Z

    .line 5863
    const/16 v1, 0x58

    new-array v2, v1, [I

    iput-object v2, p0, Lbsh/Parser;->jj_la1:[I

    .line 5891
    const/16 v2, 0x1f

    new-array v2, v2, [Lbsh/Parser$JJCalls;

    iput-object v2, p0, Lbsh/Parser;->jj_2_rtns:[Lbsh/Parser$JJCalls;

    .line 5892
    iput-boolean v0, p0, Lbsh/Parser;->jj_rescan:Z

    .line 5893
    iput v0, p0, Lbsh/Parser;->jj_gc:I

    .line 5981
    new-instance v2, Lbsh/Parser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lbsh/Parser$LookaheadSuccess;-><init>(Lbsh/Parser$1;)V

    iput-object v2, p0, Lbsh/Parser;->jj_ls:Lbsh/Parser$LookaheadSuccess;

    .line 6027
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lbsh/Parser;->jj_expentries:Ljava/util/Vector;

    .line 6029
    const/4 v2, -0x1

    iput v2, p0, Lbsh/Parser;->jj_kind:I

    .line 6030
    const/16 v3, 0x64

    new-array v3, v3, [I

    iput-object v3, p0, Lbsh/Parser;->jj_lasttokens:[I

    .line 5938
    iput-object p1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    .line 5939
    new-instance v3, Lbsh/Token;

    invoke-direct {v3}, Lbsh/Token;-><init>()V

    iput-object v3, p0, Lbsh/Parser;->token:Lbsh/Token;

    .line 5940
    iput v2, p0, Lbsh/Parser;->jj_ntk:I

    .line 5941
    iput v0, p0, Lbsh/Parser;->jj_gen:I

    .line 5942
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5943
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lbsh/Parser;->jj_2_rtns:[Lbsh/Parser$JJCalls;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    new-instance v2, Lbsh/Parser$JJCalls;

    invoke-direct {v2}, Lbsh/Parser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5944
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 5895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lbsh/JJTParserState;

    invoke-direct {v0}, Lbsh/JJTParserState;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/Parser;->retainComments:Z

    .line 5860
    iput-boolean v0, p0, Lbsh/Parser;->lookingAhead:Z

    .line 5863
    const/16 v1, 0x58

    new-array v2, v1, [I

    iput-object v2, p0, Lbsh/Parser;->jj_la1:[I

    .line 5891
    const/16 v2, 0x1f

    new-array v2, v2, [Lbsh/Parser$JJCalls;

    iput-object v2, p0, Lbsh/Parser;->jj_2_rtns:[Lbsh/Parser$JJCalls;

    .line 5892
    iput-boolean v0, p0, Lbsh/Parser;->jj_rescan:Z

    .line 5893
    iput v0, p0, Lbsh/Parser;->jj_gc:I

    .line 5981
    new-instance v2, Lbsh/Parser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lbsh/Parser$LookaheadSuccess;-><init>(Lbsh/Parser$1;)V

    iput-object v2, p0, Lbsh/Parser;->jj_ls:Lbsh/Parser$LookaheadSuccess;

    .line 6027
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lbsh/Parser;->jj_expentries:Ljava/util/Vector;

    .line 6029
    const/4 v2, -0x1

    iput v2, p0, Lbsh/Parser;->jj_kind:I

    .line 6030
    const/16 v3, 0x64

    new-array v3, v3, [I

    iput-object v3, p0, Lbsh/Parser;->jj_lasttokens:[I

    .line 5896
    new-instance v3, Lbsh/JavaCharStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4, v4}, Lbsh/JavaCharStream;-><init>(Ljava/io/InputStream;II)V

    iput-object v3, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    .line 5897
    new-instance v3, Lbsh/ParserTokenManager;

    iget-object v4, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-direct {v3, v4}, Lbsh/ParserTokenManager;-><init>(Lbsh/JavaCharStream;)V

    iput-object v3, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    .line 5898
    new-instance v3, Lbsh/Token;

    invoke-direct {v3}, Lbsh/Token;-><init>()V

    iput-object v3, p0, Lbsh/Parser;->token:Lbsh/Token;

    .line 5899
    iput v2, p0, Lbsh/Parser;->jj_ntk:I

    .line 5900
    iput v0, p0, Lbsh/Parser;->jj_gen:I

    .line 5901
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5902
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lbsh/Parser;->jj_2_rtns:[Lbsh/Parser$JJCalls;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    new-instance v2, Lbsh/Parser$JJCalls;

    invoke-direct {v2}, Lbsh/Parser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5903
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/Reader;

    .line 5916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lbsh/JJTParserState;

    invoke-direct {v0}, Lbsh/JJTParserState;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/Parser;->retainComments:Z

    .line 5860
    iput-boolean v0, p0, Lbsh/Parser;->lookingAhead:Z

    .line 5863
    const/16 v1, 0x58

    new-array v2, v1, [I

    iput-object v2, p0, Lbsh/Parser;->jj_la1:[I

    .line 5891
    const/16 v2, 0x1f

    new-array v2, v2, [Lbsh/Parser$JJCalls;

    iput-object v2, p0, Lbsh/Parser;->jj_2_rtns:[Lbsh/Parser$JJCalls;

    .line 5892
    iput-boolean v0, p0, Lbsh/Parser;->jj_rescan:Z

    .line 5893
    iput v0, p0, Lbsh/Parser;->jj_gc:I

    .line 5981
    new-instance v2, Lbsh/Parser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lbsh/Parser$LookaheadSuccess;-><init>(Lbsh/Parser$1;)V

    iput-object v2, p0, Lbsh/Parser;->jj_ls:Lbsh/Parser$LookaheadSuccess;

    .line 6027
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lbsh/Parser;->jj_expentries:Ljava/util/Vector;

    .line 6029
    const/4 v2, -0x1

    iput v2, p0, Lbsh/Parser;->jj_kind:I

    .line 6030
    const/16 v3, 0x64

    new-array v3, v3, [I

    iput-object v3, p0, Lbsh/Parser;->jj_lasttokens:[I

    .line 5917
    new-instance v3, Lbsh/JavaCharStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4, v4}, Lbsh/JavaCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v3, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    .line 5918
    new-instance v3, Lbsh/ParserTokenManager;

    iget-object v4, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-direct {v3, v4}, Lbsh/ParserTokenManager;-><init>(Lbsh/JavaCharStream;)V

    iput-object v3, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    .line 5919
    new-instance v3, Lbsh/Token;

    invoke-direct {v3}, Lbsh/Token;-><init>()V

    iput-object v3, p0, Lbsh/Parser;->token:Lbsh/Token;

    .line 5920
    iput v2, p0, Lbsh/Parser;->jj_ntk:I

    .line 5921
    iput v0, p0, Lbsh/Parser;->jj_gen:I

    .line 5922
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5923
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lbsh/Parser;->jj_2_rtns:[Lbsh/Parser$JJCalls;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    new-instance v2, Lbsh/Parser$JJCalls;

    invoke-direct {v2}, Lbsh/Parser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5924
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private final jj_2_1(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3708
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3709
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_1()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3711
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3710
    :catch_0
    move-exception v2

    .line 3711
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_10(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3771
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3772
    const/4 v0, 0x1

    const/16 v1, 0x9

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_10()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3774
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3773
    :catch_0
    move-exception v2

    .line 3774
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_11(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3778
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3779
    const/4 v0, 0x1

    const/16 v1, 0xa

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_11()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3781
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3780
    :catch_0
    move-exception v2

    .line 3781
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_12(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3785
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3786
    const/4 v0, 0x1

    const/16 v1, 0xb

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_12()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3788
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3787
    :catch_0
    move-exception v2

    .line 3788
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_13(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3792
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3793
    const/4 v0, 0x1

    const/16 v1, 0xc

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_13()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3795
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3794
    :catch_0
    move-exception v2

    .line 3795
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_14(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3799
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3800
    const/4 v0, 0x1

    const/16 v1, 0xd

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_14()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3802
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3801
    :catch_0
    move-exception v2

    .line 3802
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_15(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3806
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3807
    const/4 v0, 0x1

    const/16 v1, 0xe

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_15()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3809
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3808
    :catch_0
    move-exception v2

    .line 3809
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_16(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3813
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3814
    const/4 v0, 0x1

    const/16 v1, 0xf

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_16()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3816
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3815
    :catch_0
    move-exception v2

    .line 3816
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_17(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3820
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3821
    const/4 v0, 0x1

    const/16 v1, 0x10

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_17()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3823
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3822
    :catch_0
    move-exception v2

    .line 3823
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_18(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3827
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3828
    const/4 v0, 0x1

    const/16 v1, 0x11

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_18()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3830
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3829
    :catch_0
    move-exception v2

    .line 3830
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_19(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3834
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3835
    const/4 v0, 0x1

    const/16 v1, 0x12

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_19()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3837
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3836
    :catch_0
    move-exception v2

    .line 3837
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_2(I)Z
    .locals 2
    .param p1, "xla"    # I

    .line 3715
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3716
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_2()Z

    move-result v1
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3718
    xor-int/2addr v1, v0

    invoke-direct {p0, v0, p1}, Lbsh/Parser;->jj_save(II)V

    return v1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0, p1}, Lbsh/Parser;->jj_save(II)V

    throw v1

    .line 3717
    :catch_0
    move-exception v1

    .line 3718
    .local v1, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v0, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_20(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3841
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3842
    const/4 v0, 0x1

    const/16 v1, 0x13

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_20()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3844
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3843
    :catch_0
    move-exception v2

    .line 3844
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_21(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3848
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3849
    const/4 v0, 0x1

    const/16 v1, 0x14

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_21()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3851
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3850
    :catch_0
    move-exception v2

    .line 3851
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_22(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3855
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3856
    const/4 v0, 0x1

    const/16 v1, 0x15

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_22()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3858
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3857
    :catch_0
    move-exception v2

    .line 3858
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_23(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3862
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3863
    const/4 v0, 0x1

    const/16 v1, 0x16

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_23()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3865
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3864
    :catch_0
    move-exception v2

    .line 3865
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_24(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3869
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3870
    const/4 v0, 0x1

    const/16 v1, 0x17

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_24()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3872
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3871
    :catch_0
    move-exception v2

    .line 3872
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_25(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3876
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3877
    const/4 v0, 0x1

    const/16 v1, 0x18

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_25()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3879
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3878
    :catch_0
    move-exception v2

    .line 3879
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_26(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3883
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3884
    const/4 v0, 0x1

    const/16 v1, 0x19

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_26()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3886
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3885
    :catch_0
    move-exception v2

    .line 3886
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_27(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3890
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3891
    const/4 v0, 0x1

    const/16 v1, 0x1a

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_27()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3893
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3892
    :catch_0
    move-exception v2

    .line 3893
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_28(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3897
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3898
    const/4 v0, 0x1

    const/16 v1, 0x1b

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_28()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3900
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3899
    :catch_0
    move-exception v2

    .line 3900
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_29(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3904
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3905
    const/4 v0, 0x1

    const/16 v1, 0x1c

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_29()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3907
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3906
    :catch_0
    move-exception v2

    .line 3907
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_3(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3722
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3723
    const/4 v0, 0x1

    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_3()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3725
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3724
    :catch_0
    move-exception v2

    .line 3725
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_30(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3911
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3912
    const/4 v0, 0x1

    const/16 v1, 0x1d

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_30()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3914
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3913
    :catch_0
    move-exception v2

    .line 3914
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_31(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3918
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3919
    const/4 v0, 0x1

    const/16 v1, 0x1e

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_31()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3921
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3920
    :catch_0
    move-exception v2

    .line 3921
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_4(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3729
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3730
    const/4 v0, 0x1

    const/4 v1, 0x3

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_4()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3732
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3731
    :catch_0
    move-exception v2

    .line 3732
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_5(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3736
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3737
    const/4 v0, 0x1

    const/4 v1, 0x4

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_5()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3739
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3738
    :catch_0
    move-exception v2

    .line 3739
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_6(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3743
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3744
    const/4 v0, 0x1

    const/4 v1, 0x5

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_6()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3746
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3745
    :catch_0
    move-exception v2

    .line 3746
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_7(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3750
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3751
    const/4 v0, 0x1

    const/4 v1, 0x6

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_7()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3753
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3752
    :catch_0
    move-exception v2

    .line 3753
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_8(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3757
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3758
    const/4 v0, 0x1

    const/4 v1, 0x7

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_8()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3760
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3759
    :catch_0
    move-exception v2

    .line 3760
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_9(I)Z
    .locals 3
    .param p1, "xla"    # I

    .line 3764
    iput p1, p0, Lbsh/Parser;->jj_la:I

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 3765
    const/4 v0, 0x1

    const/16 v1, 0x8

    :try_start_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_9()Z

    move-result v2
    :try_end_0
    .catch Lbsh/Parser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3767
    xor-int/2addr v0, v2

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    throw v0

    .line 3766
    :catch_0
    move-exception v2

    .line 3767
    .local v2, "ls":Lbsh/Parser$LookaheadSuccess;
    invoke-direct {p0, v1, p1}, Lbsh/Parser;->jj_save(II)V

    return v0
.end method

.method private final jj_3R_100()Z
    .locals 1

    .line 4996
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_130()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4997
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_101()Z
    .locals 1

    .line 4965
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_37()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4966
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_102()Z
    .locals 1

    .line 4944
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4945
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_103()Z
    .locals 1

    .line 4927
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4928
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_104()Z
    .locals 2

    .line 4844
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4845
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3_16()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4846
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4847
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_131()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4848
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4849
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_132()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4850
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4851
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_133()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4855
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_105()Z
    .locals 1

    .line 4729
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_129()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4730
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_106()Z
    .locals 1

    .line 4295
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_134()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4296
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_107()Z
    .locals 2

    .line 4171
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4172
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_34()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4173
    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4174
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_108()Z
    .locals 2

    .line 3991
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_135()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3993
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 3994
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_156()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 3995
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_109()Z
    .locals 2

    .line 4550
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4551
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3_5()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4552
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4553
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_136()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4555
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_110()Z
    .locals 2

    .line 4464
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4465
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_109()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4466
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_111()Z
    .locals 2

    .line 4134
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4135
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4136
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_112()Z
    .locals 1

    .line 5452
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5453
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_113()Z
    .locals 3

    .line 5366
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5367
    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5368
    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5369
    :cond_2
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5370
    :cond_3
    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 5373
    :cond_4
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5374
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_183()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5376
    const/16 v2, 0x4b

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 5377
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_114()Z
    .locals 2

    .line 5208
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5209
    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5210
    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5211
    :cond_2
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5212
    :cond_3
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 5214
    :cond_4
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5215
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_184()Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5216
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_115()Z
    .locals 2

    .line 5166
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5167
    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5168
    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5169
    :cond_2
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5170
    :cond_3
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 5171
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_116()Z
    .locals 2

    .line 5121
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5122
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5123
    :cond_1
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5124
    :cond_2
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5125
    :cond_3
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 5126
    :cond_4
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 5127
    :cond_5
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 5128
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_117()Z
    .locals 4

    .line 5086
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5087
    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5089
    :cond_1
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5090
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_185()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5091
    :cond_2
    const/16 v2, 0x4e

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    .line 5092
    :cond_3
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5093
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_186()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5094
    :cond_4
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 5095
    :cond_5
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5096
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_187()Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5097
    :cond_6
    const/16 v2, 0x49

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_7

    return v1

    .line 5098
    :cond_7
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v2

    if-eqz v2, :cond_8

    return v1

    .line 5099
    :cond_8
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_118()Z
    .locals 2

    .line 4982
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4983
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3_30()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4984
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4985
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_137()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4987
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_119()Z
    .locals 3

    .line 4712
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4714
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4715
    .local v0, "xsp":Lbsh/Token;
    const/16 v2, 0x45

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4716
    :cond_1
    const/16 v2, 0x4e

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4717
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_120()Z
    .locals 3

    .line 4668
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4670
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4671
    .local v0, "xsp":Lbsh/Token;
    const/16 v2, 0x45

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4672
    :cond_1
    const/16 v2, 0x4e

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4673
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_121()Z
    .locals 3

    .line 4659
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4661
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4662
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_188()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4663
    :cond_1
    const/16 v2, 0x4e

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4664
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_122()Z
    .locals 2

    .line 4612
    const/16 v0, 0x33

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4613
    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4614
    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4615
    :cond_2
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 4616
    :cond_3
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 4617
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_123()Z
    .locals 2

    .line 4578
    const/16 v0, 0x35

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4579
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4580
    :cond_1
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4581
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_124()Z
    .locals 2

    .line 4504
    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4505
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4508
    :cond_1
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4509
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_189()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4511
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4512
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_190()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4513
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_125()Z
    .locals 1

    .line 4960
    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4961
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_126()Z
    .locals 1

    .line 4897
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4898
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_127()Z
    .locals 2

    .line 4902
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_42()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4903
    :cond_0
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4904
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_128()Z
    .locals 2

    .line 4761
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4762
    :cond_0
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4763
    :cond_1
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4764
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_129()Z
    .locals 2

    .line 4678
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4679
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_138()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4680
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4681
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_139()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4682
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4683
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_140()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4684
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4685
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_141()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4686
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4687
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_142()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4688
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4689
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_143()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4690
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4691
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_144()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4698
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_130()Z
    .locals 2

    .line 4260
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4261
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3_18()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4262
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4263
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_145()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4265
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_131()Z
    .locals 2

    .line 4806
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4807
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4808
    :cond_1
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4809
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_132()Z
    .locals 2

    .line 4775
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4776
    :cond_0
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4778
    :cond_1
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4779
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_146()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4780
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_133()Z
    .locals 2

    .line 4768
    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4769
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4770
    :cond_1
    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4771
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_134()Z
    .locals 2

    .line 4285
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4288
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4289
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_147()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4291
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_135()Z
    .locals 2

    .line 3966
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_148()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3969
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 3970
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_159()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 3972
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_136()Z
    .locals 1

    .line 4528
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4529
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_137()Z
    .locals 2

    .line 4932
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4933
    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4934
    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4935
    :cond_2
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 4936
    :cond_3
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 4937
    :cond_4
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 4938
    :cond_5
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 4939
    :cond_6
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 4940
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_138()Z
    .locals 1

    .line 4702
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4703
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_139()Z
    .locals 1

    .line 4590
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4591
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_140()Z
    .locals 1

    .line 4517
    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4518
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_141()Z
    .locals 1

    .line 4470
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4471
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_142()Z
    .locals 1

    .line 4454
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_149()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4455
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_143()Z
    .locals 1

    .line 4449
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4450
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_144()Z
    .locals 1

    .line 4423
    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4424
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_145()Z
    .locals 3

    .line 4240
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4241
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4243
    :cond_1
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4244
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_151()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4245
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4246
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_152()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4248
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_146()Z
    .locals 1

    .line 4707
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_69()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4708
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_147()Z
    .locals 2

    .line 4269
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4270
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4271
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_148()Z
    .locals 2

    .line 3925
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_153()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3928
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 3929
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_162()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 3931
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_149()Z
    .locals 2

    .line 4371
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4372
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_154()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4373
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4374
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_155()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4376
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_150()Z
    .locals 2

    .line 4211
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4212
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3_21()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4213
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4214
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_157()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4216
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_151()Z
    .locals 1

    .line 4184
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_150()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4185
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_152()Z
    .locals 2

    .line 4146
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_69()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4148
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4149
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3_17()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4150
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_153()Z
    .locals 2

    .line 5819
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_158()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5822
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5823
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_165()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5825
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_154()Z
    .locals 1

    .line 4365
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4366
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_155()Z
    .locals 1

    .line 4345
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4346
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_156()Z
    .locals 2

    .line 5793
    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5794
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5795
    :cond_1
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5796
    :cond_2
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_108()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5797
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_157()Z
    .locals 3

    .line 4161
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_160()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4163
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4164
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_160()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4166
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_97()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 4167
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_158()Z
    .locals 2

    .line 5783
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_161()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5786
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5787
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_167()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5789
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_159()Z
    .locals 3

    .line 3951
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 3952
    .local v0, "xsp":Lbsh/Token;
    const/16 v1, 0x60

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3953
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 3954
    const/16 v1, 0x61

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 3956
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_148()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 3957
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_160()Z
    .locals 2

    .line 4140
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4141
    :cond_0
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4142
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_161()Z
    .locals 2

    .line 5773
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_164()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5776
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5777
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_169()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5779
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_162()Z
    .locals 3

    .line 5840
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5841
    .local v0, "xsp":Lbsh/Token;
    const/16 v1, 0x62

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5842
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5843
    const/16 v1, 0x63

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 5845
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_153()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 5846
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_163()Z
    .locals 2

    .line 4568
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_31()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4571
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4572
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3_4()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4574
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_164()Z
    .locals 2

    .line 5739
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_166()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5742
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5743
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_171()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5745
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_165()Z
    .locals 3

    .line 5802
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5803
    .local v0, "xsp":Lbsh/Token;
    const/16 v1, 0x6c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5804
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5805
    const/16 v1, 0x6d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 5807
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_158()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 5808
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_166()Z
    .locals 2

    .line 5687
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_168()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5689
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5690
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_179()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5691
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_167()Z
    .locals 2

    .line 5700
    const/16 v0, 0x6e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5701
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_161()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5702
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_168()Z
    .locals 2

    .line 5655
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_170()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5658
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5659
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_182()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5661
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_169()Z
    .locals 3

    .line 5750
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5751
    .local v0, "xsp":Lbsh/Token;
    const/16 v1, 0x6a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5752
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5753
    const/16 v1, 0x6b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 5755
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_164()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 5756
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_170()Z
    .locals 2

    .line 5576
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_178()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5579
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5580
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_192()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5582
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_171()Z
    .locals 3

    .line 5566
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5567
    .local v0, "xsp":Lbsh/Token;
    const/16 v1, 0x5a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5568
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5569
    const/16 v1, 0x5f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 5571
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_166()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 5572
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_172()Z
    .locals 2

    .line 5051
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5052
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5053
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_173()Z
    .locals 2

    .line 5018
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5019
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_76()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5020
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_174()Z
    .locals 2

    .line 4859
    const/16 v0, 0x36

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4860
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_76()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4861
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_175()Z
    .locals 1

    .line 4832
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4833
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_176()Z
    .locals 2

    .line 4721
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4723
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4724
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_180()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4725
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_177()Z
    .locals 2

    .line 4627
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4628
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_176()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4629
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_178()Z
    .locals 2

    .line 5515
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_181()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5518
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5519
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_200()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5521
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_179()Z
    .locals 2

    .line 5676
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5677
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5678
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_180()Z
    .locals 2

    .line 4621
    const/16 v0, 0x51

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4622
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_31()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4623
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_181()Z
    .locals 2

    .line 5489
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_191()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5492
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5493
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_209()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5495
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_182()Z
    .locals 3

    .line 5613
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5614
    .local v0, "xsp":Lbsh/Token;
    const/16 v1, 0x54

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5615
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5616
    const/16 v1, 0x55

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5617
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5618
    const/16 v1, 0x52

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5619
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5620
    const/16 v1, 0x53

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5621
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5622
    const/16 v1, 0x5b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5623
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5624
    const/16 v1, 0x5c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5625
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5626
    const/16 v1, 0x5d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5627
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5628
    const/16 v1, 0x5e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 5636
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_170()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 5637
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_183()Z
    .locals 2

    .line 5351
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_193()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5354
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5355
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3_29()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5357
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_184()Z
    .locals 2

    .line 4949
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4950
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4951
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_185()Z
    .locals 1

    .line 4991
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_194()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4992
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_186()Z
    .locals 1

    .line 5013
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5014
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_187()Z
    .locals 1

    .line 5001
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_195()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5002
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_188()Z
    .locals 1

    .line 4585
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4586
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_189()Z
    .locals 2

    .line 4495
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4496
    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4497
    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_109()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4498
    :cond_2
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 4499
    :cond_3
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 4500
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_190()Z
    .locals 2

    .line 4475
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4476
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4477
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_191()Z
    .locals 2

    .line 5474
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5475
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_196()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5476
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5477
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_197()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5478
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5479
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_198()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5480
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5481
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_199()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 5485
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_192()Z
    .locals 3

    .line 5526
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5527
    .local v0, "xsp":Lbsh/Token;
    const/16 v1, 0x70

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5528
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5529
    const/16 v1, 0x71

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5530
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5531
    const/16 v1, 0x72

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5532
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5533
    const/16 v1, 0x73

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5534
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5535
    const/16 v1, 0x74

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5536
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5537
    const/16 v1, 0x75

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 5543
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_178()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 5544
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_193()Z
    .locals 2

    .line 5337
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5338
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_201()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5339
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5340
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_202()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 5342
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_194()Z
    .locals 2

    .line 4883
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4884
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_203()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4885
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4886
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_204()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4888
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_195()Z
    .locals 1

    .line 4734
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_205()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4735
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_196()Z
    .locals 3

    .line 5463
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5464
    .local v0, "xsp":Lbsh/Token;
    const/16 v1, 0x66

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5465
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5466
    const/16 v1, 0x67

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 5468
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_191()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 5469
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_197()Z
    .locals 1

    .line 5457
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_206()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5458
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_198()Z
    .locals 1

    .line 5447
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_207()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5448
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_199()Z
    .locals 1

    .line 5442
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_208()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5443
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_200()Z
    .locals 3

    .line 5505
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5506
    .local v0, "xsp":Lbsh/Token;
    const/16 v1, 0x66

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5507
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5508
    const/16 v1, 0x67

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 5510
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_181()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 5511
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_201()Z
    .locals 2

    .line 5329
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5330
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5331
    :cond_1
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5332
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_202()Z
    .locals 2

    .line 5323
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5324
    :cond_0
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5325
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_203()Z
    .locals 1

    .line 4877
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_93()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4878
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_204()Z
    .locals 1

    .line 4865
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_205()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4866
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_205()Z
    .locals 2

    .line 4739
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_112()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4742
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4743
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_210()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4745
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_206()Z
    .locals 2

    .line 5430
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5431
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5432
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_207()Z
    .locals 2

    .line 5405
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5406
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5407
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_208()Z
    .locals 2

    .line 5393
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5394
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_211()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5395
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5396
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_212()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5397
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5398
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_213()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 5401
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_209()Z
    .locals 3

    .line 5417
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5418
    .local v0, "xsp":Lbsh/Token;
    const/16 v1, 0x68

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5419
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5420
    const/16 v1, 0x69

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5421
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5422
    const/16 v1, 0x6f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 5425
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_191()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 5426
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_210()Z
    .locals 2

    .line 4653
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4654
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_112()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4655
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_211()Z
    .locals 3

    .line 5382
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5383
    .local v0, "xsp":Lbsh/Token;
    const/16 v1, 0x57

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5384
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5385
    const/16 v1, 0x56

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 5387
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_191()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 5388
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_212()Z
    .locals 1

    .line 5361
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_214()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5362
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_213()Z
    .locals 1

    .line 5346
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_215()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5347
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_214()Z
    .locals 2

    .line 5141
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5142
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_216()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5143
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5144
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_217()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 5146
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_215()Z
    .locals 2

    .line 5194
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5195
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_218()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5196
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5197
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_219()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 5199
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_216()Z
    .locals 2

    .line 5132
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5133
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5134
    :cond_1
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5135
    :cond_2
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_191()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5136
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_217()Z
    .locals 2

    .line 5113
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5114
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5115
    :cond_1
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5116
    :cond_2
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_208()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5117
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_218()Z
    .locals 3

    .line 5182
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5184
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5185
    .local v0, "xsp":Lbsh/Token;
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5186
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5187
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 5189
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_219()Z
    .locals 1

    .line 5161
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5162
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_28()Z
    .locals 2

    .line 5712
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5713
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_46()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5714
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5715
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_47()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5716
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5717
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_48()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5718
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5719
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_49()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5720
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5721
    invoke-direct {p0}, Lbsh/Parser;->jj_3_28()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5722
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5723
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_50()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5724
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5725
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_51()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5726
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5727
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_52()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 5735
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_29()Z
    .locals 2

    .line 4315
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4318
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4319
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3_7()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4321
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_30()Z
    .locals 2

    .line 4606
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4607
    :cond_0
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4608
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_31()Z
    .locals 2

    .line 4644
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4645
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_53()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4646
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4647
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_54()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4649
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_32()Z
    .locals 2

    .line 4482
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4483
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_55()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4484
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4485
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_56()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4488
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4489
    invoke-direct {p0}, Lbsh/Parser;->jj_3_6()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4491
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_33()Z
    .locals 2

    .line 5103
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_57()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5106
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5107
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_58()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5109
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_34()Z
    .locals 2

    .line 4026
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4027
    .local v0, "xsp":Lbsh/Token;
    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4028
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4029
    const/16 v1, 0x78

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4030
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4031
    const/16 v1, 0x79

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4032
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4033
    const/16 v1, 0x7f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4034
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4035
    const/16 v1, 0x76

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4036
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4037
    const/16 v1, 0x77

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4038
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4039
    const/16 v1, 0x7a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4040
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4041
    const/16 v1, 0x7e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4042
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4043
    const/16 v1, 0x7c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4044
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4045
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4046
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4047
    const/16 v1, 0x81

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4048
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4049
    const/16 v1, 0x82

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4050
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4051
    const/16 v1, 0x83

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4052
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4053
    const/16 v1, 0x84

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4054
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4055
    const/16 v1, 0x85

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4070
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_35()Z
    .locals 2

    .line 5305
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5306
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3_10()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5307
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5308
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_59()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5309
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5310
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_60()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 5313
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_36()Z
    .locals 2

    .line 4391
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4392
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_61()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4393
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4394
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_62()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4395
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4396
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_63()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4397
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4398
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_64()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4399
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4400
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_65()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4401
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4402
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_66()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4403
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4404
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_67()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4405
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4406
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_68()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4414
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_37()Z
    .locals 2

    .line 5057
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5058
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_69()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5059
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_38()Z
    .locals 3

    .line 5761
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5762
    .local v0, "xsp":Lbsh/Token;
    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5763
    :cond_0
    const/16 v1, 0x4a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 5765
    :cond_1
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5766
    invoke-direct {p0}, Lbsh/Parser;->jj_3_23()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5768
    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 5769
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_39()Z
    .locals 2

    .line 4226
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4227
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_70()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4228
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4229
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_71()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4231
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_40()Z
    .locals 2

    .line 5812
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5813
    :cond_0
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5814
    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5815
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_41()Z
    .locals 2

    .line 5297
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5298
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_72()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5300
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_42()Z
    .locals 2

    .line 4429
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4430
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_73()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4431
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4432
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_74()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4434
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_43()Z
    .locals 3

    .line 4559
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4561
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4562
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_75()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4563
    :cond_1
    const/16 v2, 0x49

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4564
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_44()Z
    .locals 2

    .line 5436
    const/16 v0, 0x36

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5437
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_76()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5438
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_45()Z
    .locals 4

    .line 4075
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4076
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3_22()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4077
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4078
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_77()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4079
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4080
    const/16 v1, 0x4e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4081
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4082
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_78()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4083
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4084
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_79()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4085
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4086
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_80()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4087
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4088
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_81()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4089
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4090
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_82()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4091
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4092
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbsh/Parser;->lookingAhead:Z

    .line 4093
    invoke-virtual {p0}, Lbsh/Parser;->isRegularForStatement()Z

    move-result v3

    iput-boolean v3, p0, Lbsh/Parser;->jj_semLA:Z

    .line 4094
    iput-boolean v2, p0, Lbsh/Parser;->lookingAhead:Z

    .line 4095
    if-eqz v3, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_3R_83()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4096
    :cond_0
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4097
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_84()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4098
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4099
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_85()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4100
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4101
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_86()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4102
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4103
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_87()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4104
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4105
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_88()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4106
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4107
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_89()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4108
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4109
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_90()Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 4125
    :cond_1
    return v2
.end method

.method private final jj_3R_46()Z
    .locals 1

    .line 5706
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_91()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5707
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_47()Z
    .locals 1

    .line 5695
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_92()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5696
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_48()Z
    .locals 1

    .line 5682
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_92()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5683
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_49()Z
    .locals 2

    .line 5649
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_93()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5650
    :cond_0
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5651
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_50()Z
    .locals 1

    .line 5586
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_94()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5587
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_51()Z
    .locals 1

    .line 5560
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_95()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5561
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_52()Z
    .locals 1

    .line 5548
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_96()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5549
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_53()Z
    .locals 1

    .line 4638
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_97()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4639
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_54()Z
    .locals 1

    .line 4633
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4634
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_55()Z
    .locals 1

    .line 4459
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_36()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4460
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_56()Z
    .locals 1

    .line 4355
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4356
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_57()Z
    .locals 2

    .line 5025
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5026
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_98()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5027
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5028
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_99()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5029
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5030
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5031
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5032
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_101()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5033
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5034
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_102()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5035
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5036
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_103()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 5042
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_58()Z
    .locals 1

    .line 4955
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_104()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4956
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_59()Z
    .locals 2

    .line 5282
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5283
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5284
    :cond_1
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5285
    :cond_2
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5286
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_60()Z
    .locals 4

    .line 5257
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 5258
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 5259
    :cond_1
    const/16 v1, 0x49

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 5261
    :cond_2
    iget-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5262
    .local v1, "xsp":Lbsh/Token;
    const/16 v3, 0x57

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5263
    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5264
    const/16 v3, 0x56

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5265
    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5266
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5267
    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5268
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5269
    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5270
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5271
    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5272
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_105()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 5278
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_61()Z
    .locals 1

    .line 4385
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4386
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_62()Z
    .locals 1

    .line 4380
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4381
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_63()Z
    .locals 1

    .line 4360
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4361
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_64()Z
    .locals 1

    .line 4350
    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4351
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_65()Z
    .locals 1

    .line 4340
    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4341
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_66()Z
    .locals 1

    .line 4335
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4336
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_67()Z
    .locals 1

    .line 4330
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4331
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_68()Z
    .locals 1

    .line 4325
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4326
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_69()Z
    .locals 3

    .line 4306
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4308
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4309
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_106()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4310
    :cond_1
    const/16 v2, 0x49

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4311
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_70()Z
    .locals 1

    .line 4235
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_107()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4236
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_71()Z
    .locals 1

    .line 4220
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_108()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4221
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_72()Z
    .locals 2

    .line 5221
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5222
    .local v0, "xsp":Lbsh/Token;
    const/16 v1, 0x2b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5223
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5224
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5225
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5226
    const/16 v1, 0x2d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5227
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5228
    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5229
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5230
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5231
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5232
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5233
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5234
    const/16 v1, 0x34

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5235
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5236
    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5237
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5238
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5239
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5240
    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5241
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5242
    const/16 v1, 0x31

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 5253
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_73()Z
    .locals 1

    .line 4438
    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4439
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_74()Z
    .locals 1

    .line 4418
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4419
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_75()Z
    .locals 2

    .line 4539
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_109()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4542
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4543
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_110()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4545
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_76()Z
    .locals 2

    .line 4275
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4278
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4279
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_111()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4281
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_77()Z
    .locals 1

    .line 4020
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4021
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_78()Z
    .locals 2

    .line 4009
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_112()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4010
    :cond_0
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4011
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_79()Z
    .locals 1

    .line 4004
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_113()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4005
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_80()Z
    .locals 1

    .line 3999
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_114()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4000
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_81()Z
    .locals 1

    .line 3986
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_115()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3987
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_82()Z
    .locals 1

    .line 3981
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_116()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3982
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_83()Z
    .locals 1

    .line 3976
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_117()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3977
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_84()Z
    .locals 1

    .line 3961
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_118()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3962
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_85()Z
    .locals 1

    .line 3945
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_119()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3946
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_86()Z
    .locals 1

    .line 3940
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_120()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3941
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_87()Z
    .locals 1

    .line 3935
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_121()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3936
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_88()Z
    .locals 1

    .line 5850
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_122()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5851
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_89()Z
    .locals 1

    .line 5834
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_123()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5835
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_90()Z
    .locals 1

    .line 5829
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_124()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5830
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_91()Z
    .locals 3

    .line 5063
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5065
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5066
    .local v0, "xsp":Lbsh/Token;
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5067
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5068
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_125()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 5070
    :cond_1
    const/16 v2, 0x45

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 5071
    :cond_2
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5072
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_172()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5073
    :cond_3
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5074
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_173()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5075
    :cond_4
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 5076
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_92()Z
    .locals 3

    .line 4908
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4910
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4911
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_126()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4912
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4913
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_127()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 4915
    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_43()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4916
    :cond_2
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4917
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_174()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4918
    :cond_3
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4919
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_175()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4920
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4921
    const/16 v2, 0x4e

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 4923
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_93()Z
    .locals 2

    .line 4749
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4750
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4751
    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_176()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4754
    :cond_2
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4755
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_177()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4757
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_94()Z
    .locals 2

    .line 4797
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4798
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3_3()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4799
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4800
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_128()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 4802
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_95()Z
    .locals 2

    .line 4813
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4814
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4815
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_96()Z
    .locals 1

    .line 5499
    const/16 v0, 0x44

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5500
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_97()Z
    .locals 3

    .line 4595
    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4597
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4598
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_163()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4599
    :cond_1
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4600
    const/16 v2, 0x4f

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4601
    :cond_2
    const/16 v2, 0x4b

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 4602
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3R_98()Z
    .locals 1

    .line 5046
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_129()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5047
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_99()Z
    .locals 2

    .line 5006
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5007
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5008
    :cond_1
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5009
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_1()Z
    .locals 1

    .line 5411
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_28()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5412
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_10()Z
    .locals 2

    .line 5317
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5318
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_36()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5319
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_11()Z
    .locals 2

    .line 5175
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5176
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5177
    :cond_1
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5178
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_12()Z
    .locals 3

    .line 5150
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5152
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5153
    .local v0, "xsp":Lbsh/Token;
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5154
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5155
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 5157
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3_13()Z
    .locals 2

    .line 5080
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5081
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_36()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5082
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_14()Z
    .locals 1

    .line 4892
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_37()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4893
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_15()Z
    .locals 2

    .line 4870
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4871
    :cond_0
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4872
    :cond_1
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4873
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_16()Z
    .locals 2

    .line 4837
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4838
    :cond_0
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4839
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_17()Z
    .locals 1

    .line 4015
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_38()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4016
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_18()Z
    .locals 2

    .line 4252
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4253
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_36()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4254
    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_150()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4255
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_19()Z
    .locals 2

    .line 4189
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4190
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4191
    :cond_1
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4192
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_2()Z
    .locals 2

    .line 4826
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4827
    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4828
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_20()Z
    .locals 2

    .line 4178
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4179
    :cond_0
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4180
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_21()Z
    .locals 2

    .line 4197
    invoke-direct {p0}, Lbsh/Parser;->jj_3_19()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4199
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4200
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3_19()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4203
    :cond_1
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4204
    invoke-direct {p0}, Lbsh/Parser;->jj_3_20()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4206
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3_22()Z
    .locals 1

    .line 4129
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_40()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 4130
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_23()Z
    .locals 1

    .line 5602
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_28()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5603
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_24()Z
    .locals 3

    .line 5665
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5667
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5668
    .local v0, "xsp":Lbsh/Token;
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5669
    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5670
    const/16 v2, 0x25

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 5672
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3_25()Z
    .locals 2

    .line 5641
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5642
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_42()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5643
    :cond_1
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5644
    :cond_2
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5645
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_26()Z
    .locals 3

    .line 5591
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5592
    :cond_0
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5593
    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_43()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5595
    :cond_2
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5596
    .local v0, "xsp":Lbsh/Token;
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_44()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5597
    :cond_3
    const/16 v2, 0x4a

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 5598
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3_27()Z
    .locals 2

    .line 5553
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5554
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5555
    :cond_1
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5556
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_28()Z
    .locals 1

    .line 5607
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5608
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_29()Z
    .locals 1

    .line 5203
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_28()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5204
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_3()Z
    .locals 3

    .line 4784
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4786
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4787
    .local v0, "xsp":Lbsh/Token;
    const/16 v2, 0x30

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4788
    :cond_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_29()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 4789
    :cond_2
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4790
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_30()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 4791
    :cond_3
    const/16 v2, 0x4e

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 4792
    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private final jj_3_30()Z
    .locals 2

    .line 4970
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4971
    :cond_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4972
    :cond_1
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4973
    :cond_2
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 4974
    :cond_3
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_39()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 4975
    :cond_4
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 4976
    :cond_5
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_45()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 4977
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_31()Z
    .locals 2

    .line 4819
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_41()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4820
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4821
    :cond_1
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4822
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_4()Z
    .locals 2

    .line 4522
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4523
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_31()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4524
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_5()Z
    .locals 2

    .line 4533
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_32()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4534
    :cond_0
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4535
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_6()Z
    .locals 2

    .line 4443
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4444
    :cond_0
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4445
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_7()Z
    .locals 2

    .line 4300
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4301
    :cond_0
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4302
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_8()Z
    .locals 2

    .line 4154
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_33()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4155
    :cond_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_34()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4156
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_9()Z
    .locals 1

    .line 5290
    invoke-direct {p0}, Lbsh/Parser;->jj_3R_35()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 5291
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_add_error_token(II)V
    .locals 6
    .param p1, "kind"    # I
    .param p2, "pos"    # I

    .line 6034
    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    return-void

    .line 6035
    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_endpos:I

    add-int/lit8 v1, v0, 0x1

    if-ne p2, v1, :cond_1

    .line 6036
    iget-object v1, p0, Lbsh/Parser;->jj_lasttokens:[I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lbsh/Parser;->jj_endpos:I

    aput p1, v1, v0

    goto :goto_5

    .line 6037
    :cond_1
    if-eqz v0, :cond_8

    .line 6038
    new-array v0, v0, [I

    iput-object v0, p0, Lbsh/Parser;->jj_expentry:[I

    .line 6039
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lbsh/Parser;->jj_endpos:I

    if-ge v0, v1, :cond_2

    .line 6040
    iget-object v1, p0, Lbsh/Parser;->jj_expentry:[I

    iget-object v2, p0, Lbsh/Parser;->jj_lasttokens:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 6039
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6042
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .line 6043
    .local v0, "exists":Z
    iget-object v1, p0, Lbsh/Parser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6044
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    .line 6045
    .local v2, "oldentry":[I
    array-length v3, v2

    iget-object v4, p0, Lbsh/Parser;->jj_expentry:[I

    array-length v4, v4

    if-ne v3, v4, :cond_5

    .line 6046
    const/4 v0, 0x1

    .line 6047
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v4, p0, Lbsh/Parser;->jj_expentry:[I

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 6048
    aget v5, v2, v3

    aget v4, v4, v3

    if-eq v5, v4, :cond_3

    .line 6049
    const/4 v0, 0x0

    .line 6050
    goto :goto_3

    .line 6047
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6053
    .end local v3    # "i":I
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    goto :goto_4

    .line 6055
    .end local v2    # "oldentry":[I
    :cond_5
    goto :goto_1

    .line 6056
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_6
    :goto_4
    if-nez v0, :cond_7

    iget-object v1, p0, Lbsh/Parser;->jj_expentries:Ljava/util/Vector;

    iget-object v2, p0, Lbsh/Parser;->jj_expentry:[I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 6057
    :cond_7
    if-eqz p2, :cond_8

    iget-object v1, p0, Lbsh/Parser;->jj_lasttokens:[I

    iput p2, p0, Lbsh/Parser;->jj_endpos:I

    add-int/lit8 v2, p2, -0x1

    aput p1, v1, v2

    .line 6059
    .end local v0    # "exists":Z
    :cond_8
    :goto_5
    return-void
.end method

.method private final jj_consume_token(I)Lbsh/Token;
    .locals 5
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 5958
    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    move-object v1, v0

    .local v1, "oldToken":Lbsh/Token;
    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    goto :goto_0

    .line 5959
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v2, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v2}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v2

    iput-object v2, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v2, p0, Lbsh/Parser;->token:Lbsh/Token;

    .line 5960
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    .line 5961
    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget v0, v0, Lbsh/Token;->kind:I

    if-ne v0, p1, :cond_4

    .line 5962
    iget v0, p0, Lbsh/Parser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/Parser;->jj_gen:I

    .line 5963
    iget v0, p0, Lbsh/Parser;->jj_gc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/Parser;->jj_gc:I

    const/16 v2, 0x64

    if-le v0, v2, :cond_3

    .line 5964
    const/4 v0, 0x0

    iput v0, p0, Lbsh/Parser;->jj_gc:I

    .line 5965
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lbsh/Parser;->jj_2_rtns:[Lbsh/Parser$JJCalls;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 5966
    aget-object v2, v2, v0

    .line 5967
    .local v2, "c":Lbsh/Parser$JJCalls;
    :goto_2
    if-eqz v2, :cond_2

    .line 5968
    iget v3, v2, Lbsh/Parser$JJCalls;->gen:I

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    if-ge v3, v4, :cond_1

    const/4 v3, 0x0

    iput-object v3, v2, Lbsh/Parser$JJCalls;->first:Lbsh/Token;

    .line 5969
    :cond_1
    iget-object v2, v2, Lbsh/Parser$JJCalls;->next:Lbsh/Parser$JJCalls;

    goto :goto_2

    .line 5965
    .end local v2    # "c":Lbsh/Parser$JJCalls;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5973
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    return-object v0

    .line 5975
    :cond_4
    iput-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    .line 5976
    iput p1, p0, Lbsh/Parser;->jj_kind:I

    .line 5977
    invoke-virtual {p0}, Lbsh/Parser;->generateParseException()Lbsh/ParseException;

    move-result-object v0

    throw v0
.end method

.method private static jj_la1_0()V
    .locals 1

    .line 5877
    const/16 v0, 0x58

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbsh/Parser;->jj_la1_0:[I

    .line 5878
    return-void

    :array_0
    .array-data 4
        0x1
        0x8000400
        0x8000400
        0x2000
        0x2000000
        0x0
        0x20424800
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x24424800
        0x24424800
        0x0
        0x0
        0x20424800
        0x0
        0x20424800
        0x20424800
        0x20424800
        0x0
        0x24424800
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x24424800
        0x0
        0x0
        0x24424800
        0x4000000
        0x0
        0x0
        0x24424800
        0x0
        0x0
        0x4000000
        0x0
        0x0
        0x0
        0x4000000
        0x4000000
        0x24424800
        0x0
        0x0
        0x0
        0x0
        0x0
        0x24624800
        0x40081000
        0x0
        0x0
        0x108000
        0x108000
        0x800000
        0x2c424c00
        0x24424800
        0x24424800
        0x40000000    # 2.0f
        0x24424800
        0x0
        0x0
        0x0
        0x0
        0x24424800
        0x10000
        0x10000000
    .end array-data
.end method

.method private static jj_la1_1()V
    .locals 1

    .line 5880
    const/16 v0, 0x58

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbsh/Parser;->jj_la1_1:[I

    .line 5881
    return-void

    :array_0
    .array-data 4
        0x0
        0x41b3880
        0x41b3880
        0x20
        0x0
        0x2
        0x2008050
        0x400000
        0x10000
        0x10000
        0x0
        0x4
        0x0
        0x12808350
        0x12808350
        0x0
        0x0
        0x8050
        0x0
        0x8050
        0x2008050
        0x8050
        0x0
        0x12808350
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x12808350
        0x0
        0x0
        0x12808350
        0x12800300
        0x0
        0x0
        0x12808350
        0x0
        0x0
        0x12800300
        0x0
        0x0
        0x0
        0x12800200
        0x800000
        0x12808350
        0x0
        0x0
        0x100
        0x0
        0x0
        0x1a858351
        0x1284000
        0x10000
        0x404
        0x0
        0x0
        0x0
        0x169bbbd0
        0x12808350
        0x12808350
        0x0
        0x12808350
        0x0
        0x0
        0x0
        0x0
        0x12808350
        0x0
        0x0
    .end array-data
.end method

.method private static jj_la1_2()V
    .locals 1

    .line 5883
    const/16 v0, 0x58

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbsh/Parser;->jj_la1_2:[I

    .line 5884
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x20
        0x0
        0x4400
        0x0
        0x10000
        0x0
        0x20000
        0xc0052d
        0xc0052d
        0x8000
        0x8000
        0x20
        0x20
        0x20
        0x20
        0x0
        0x8000
        0xc0012d
        0x20000
        0x1000000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x7c000000
        -0x7c000000
        0x0
        0x783c0000
        0x783c0000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xc0012d
        0xc00000
        0xc00000
        0x12d
        0xc0012d
        0x100
        0x0
        0x12d
        0x100
        0x11400
        0x10d
        0x20
        0x100
        0x11400
        0xd
        0x0
        0xc0012d
        0x8000
        0x1100
        0x0
        0x1000
        0x1000
        0xc0452d
        0x0
        0x0
        0x10
        0x0
        0x0
        0x0
        0xc0012d
        0xc0012d
        0xc0012d
        0x0
        0xc0012d
        0x8000
        0x8000
        0x20
        0x20
        0xc0012d
        0x0
        0x0
    .end array-data
.end method

.method private static jj_la1_3()V
    .locals 1

    .line 5886
    const/16 v0, 0x58

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbsh/Parser;->jj_la1_3:[I

    .line 5887
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf0
        0xf0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf0
        -0x28400000
        0x0
        0x3
        0x3
        0xc
        0xc
        0x3000
        0x3000
        0x4000
        0xc00
        0xc00
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f0000
        0x3f0000
        0xc0
        0xc0
        0x8300
        0x8300
        0xc0
        0xf0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x30
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf0
        0xf0
        0xf0
        0x0
        0xf0
        0x0
        0x0
        0x0
        0x0
        0xf0
        0x0
        0x0
    .end array-data
.end method

.method private static jj_la1_4()V
    .locals 1

    .line 5889
    const/16 v0, 0x58

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbsh/Parser;->jj_la1_4:[I

    .line 5890
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private final jj_ntk()I
    .locals 2

    .line 6021
    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_nt:Lbsh/Token;

    if-nez v0, :cond_0

    .line 6022
    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v1}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v1

    iput-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    iget v0, v1, Lbsh/Token;->kind:I

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    return v0

    .line 6024
    :cond_0
    iget v0, v0, Lbsh/Token;->kind:I

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    return v0
.end method

.method private final jj_rescan_token()V
    .locals 4

    .line 6116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/Parser;->jj_rescan:Z

    .line 6117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_2

    .line 6118
    iget-object v1, p0, Lbsh/Parser;->jj_2_rtns:[Lbsh/Parser$JJCalls;

    aget-object v1, v1, v0

    .line 6120
    .local v1, "p":Lbsh/Parser$JJCalls;
    :cond_0
    iget v2, v1, Lbsh/Parser$JJCalls;->gen:I

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    if-le v2, v3, :cond_1

    .line 6121
    iget v2, v1, Lbsh/Parser$JJCalls;->arg:I

    iput v2, p0, Lbsh/Parser;->jj_la:I

    iget-object v2, v1, Lbsh/Parser$JJCalls;->first:Lbsh/Token;

    iput-object v2, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v2, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    .line 6122
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 6153
    :pswitch_0
    invoke-direct {p0}, Lbsh/Parser;->jj_3_31()Z

    goto/16 :goto_1

    .line 6152
    :pswitch_1
    invoke-direct {p0}, Lbsh/Parser;->jj_3_30()Z

    goto/16 :goto_1

    .line 6151
    :pswitch_2
    invoke-direct {p0}, Lbsh/Parser;->jj_3_29()Z

    goto/16 :goto_1

    .line 6150
    :pswitch_3
    invoke-direct {p0}, Lbsh/Parser;->jj_3_28()Z

    goto/16 :goto_1

    .line 6149
    :pswitch_4
    invoke-direct {p0}, Lbsh/Parser;->jj_3_27()Z

    goto/16 :goto_1

    .line 6148
    :pswitch_5
    invoke-direct {p0}, Lbsh/Parser;->jj_3_26()Z

    goto/16 :goto_1

    .line 6147
    :pswitch_6
    invoke-direct {p0}, Lbsh/Parser;->jj_3_25()Z

    goto/16 :goto_1

    .line 6146
    :pswitch_7
    invoke-direct {p0}, Lbsh/Parser;->jj_3_24()Z

    goto/16 :goto_1

    .line 6145
    :pswitch_8
    invoke-direct {p0}, Lbsh/Parser;->jj_3_23()Z

    goto/16 :goto_1

    .line 6144
    :pswitch_9
    invoke-direct {p0}, Lbsh/Parser;->jj_3_22()Z

    goto :goto_1

    .line 6143
    :pswitch_a
    invoke-direct {p0}, Lbsh/Parser;->jj_3_21()Z

    goto :goto_1

    .line 6142
    :pswitch_b
    invoke-direct {p0}, Lbsh/Parser;->jj_3_20()Z

    goto :goto_1

    .line 6141
    :pswitch_c
    invoke-direct {p0}, Lbsh/Parser;->jj_3_19()Z

    goto :goto_1

    .line 6140
    :pswitch_d
    invoke-direct {p0}, Lbsh/Parser;->jj_3_18()Z

    goto :goto_1

    .line 6139
    :pswitch_e
    invoke-direct {p0}, Lbsh/Parser;->jj_3_17()Z

    goto :goto_1

    .line 6138
    :pswitch_f
    invoke-direct {p0}, Lbsh/Parser;->jj_3_16()Z

    goto :goto_1

    .line 6137
    :pswitch_10
    invoke-direct {p0}, Lbsh/Parser;->jj_3_15()Z

    goto :goto_1

    .line 6136
    :pswitch_11
    invoke-direct {p0}, Lbsh/Parser;->jj_3_14()Z

    goto :goto_1

    .line 6135
    :pswitch_12
    invoke-direct {p0}, Lbsh/Parser;->jj_3_13()Z

    goto :goto_1

    .line 6134
    :pswitch_13
    invoke-direct {p0}, Lbsh/Parser;->jj_3_12()Z

    goto :goto_1

    .line 6133
    :pswitch_14
    invoke-direct {p0}, Lbsh/Parser;->jj_3_11()Z

    goto :goto_1

    .line 6132
    :pswitch_15
    invoke-direct {p0}, Lbsh/Parser;->jj_3_10()Z

    goto :goto_1

    .line 6131
    :pswitch_16
    invoke-direct {p0}, Lbsh/Parser;->jj_3_9()Z

    goto :goto_1

    .line 6130
    :pswitch_17
    invoke-direct {p0}, Lbsh/Parser;->jj_3_8()Z

    goto :goto_1

    .line 6129
    :pswitch_18
    invoke-direct {p0}, Lbsh/Parser;->jj_3_7()Z

    goto :goto_1

    .line 6128
    :pswitch_19
    invoke-direct {p0}, Lbsh/Parser;->jj_3_6()Z

    goto :goto_1

    .line 6127
    :pswitch_1a
    invoke-direct {p0}, Lbsh/Parser;->jj_3_5()Z

    goto :goto_1

    .line 6126
    :pswitch_1b
    invoke-direct {p0}, Lbsh/Parser;->jj_3_4()Z

    goto :goto_1

    .line 6125
    :pswitch_1c
    invoke-direct {p0}, Lbsh/Parser;->jj_3_3()Z

    goto :goto_1

    .line 6124
    :pswitch_1d
    invoke-direct {p0}, Lbsh/Parser;->jj_3_2()Z

    goto :goto_1

    .line 6123
    :pswitch_1e
    invoke-direct {p0}, Lbsh/Parser;->jj_3_1()Z

    .line 6156
    :cond_1
    :goto_1
    iget-object v1, v1, Lbsh/Parser$JJCalls;->next:Lbsh/Parser$JJCalls;

    .line 6157
    if-nez v1, :cond_0

    .line 6117
    .end local v1    # "p":Lbsh/Parser$JJCalls;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 6159
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/Parser;->jj_rescan:Z

    .line 6160
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final jj_save(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "xla"    # I

    .line 6163
    iget-object v0, p0, Lbsh/Parser;->jj_2_rtns:[Lbsh/Parser$JJCalls;

    aget-object v0, v0, p1

    .line 6164
    .local v0, "p":Lbsh/Parser$JJCalls;
    :goto_0
    iget v1, v0, Lbsh/Parser$JJCalls;->gen:I

    iget v2, p0, Lbsh/Parser;->jj_gen:I

    if-le v1, v2, :cond_1

    .line 6165
    iget-object v1, v0, Lbsh/Parser$JJCalls;->next:Lbsh/Parser$JJCalls;

    if-nez v1, :cond_0

    new-instance v1, Lbsh/Parser$JJCalls;

    invoke-direct {v1}, Lbsh/Parser$JJCalls;-><init>()V

    iput-object v1, v0, Lbsh/Parser$JJCalls;->next:Lbsh/Parser$JJCalls;

    move-object v0, v1

    goto :goto_1

    .line 6166
    :cond_0
    iget-object v0, v0, Lbsh/Parser$JJCalls;->next:Lbsh/Parser$JJCalls;

    goto :goto_0

    .line 6168
    :cond_1
    :goto_1
    iget v1, p0, Lbsh/Parser;->jj_gen:I

    add-int/2addr v1, p2

    iget v2, p0, Lbsh/Parser;->jj_la:I

    sub-int/2addr v1, v2

    iput v1, v0, Lbsh/Parser$JJCalls;->gen:I

    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    iput-object v1, v0, Lbsh/Parser$JJCalls;->first:Lbsh/Token;

    iput p2, v0, Lbsh/Parser$JJCalls;->arg:I

    .line 6169
    return-void
.end method

.method private final jj_scan_token(I)Z
    .locals 4
    .param p1, "kind"    # I

    .line 5983
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 5984
    iget v1, p0, Lbsh/Parser;->jj_la:I

    sub-int/2addr v1, v2

    iput v1, p0, Lbsh/Parser;->jj_la:I

    .line 5985
    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    if-nez v0, :cond_0

    .line 5986
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v1}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v1

    iput-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    goto :goto_0

    .line 5988
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    goto :goto_0

    .line 5991
    :cond_1
    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    .line 5993
    :goto_0
    iget-boolean v0, p0, Lbsh/Parser;->jj_rescan:Z

    if-eqz v0, :cond_3

    .line 5994
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    .line 5995
    .local v1, "tok":Lbsh/Token;
    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    if-eq v1, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lbsh/Token;->next:Lbsh/Token;

    goto :goto_1

    .line 5996
    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lbsh/Parser;->jj_add_error_token(II)V

    .line 5998
    .end local v0    # "i":I
    .end local v1    # "tok":Lbsh/Token;
    :cond_3
    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget v0, v0, Lbsh/Token;->kind:I

    if-eq v0, p1, :cond_4

    return v2

    .line 5999
    :cond_4
    iget v0, p0, Lbsh/Parser;->jj_la:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->jj_lastpos:Lbsh/Token;

    if-eq v0, v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lbsh/Parser;->jj_ls:Lbsh/Parser$LookaheadSuccess;

    throw v0

    .line 6000
    :cond_6
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lbsh/ParseException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "print":Z
    const/4 v1, 0x0

    .line 103
    .local v1, "i":I
    const/4 v2, 0x0

    aget-object v2, p0, v2

    const-string v3, "-p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    add-int/lit8 v1, v1, 0x1

    .line 105
    const/4 v0, 0x1

    .line 107
    :cond_0
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 108
    new-instance v2, Ljava/io/FileReader;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, "in":Ljava/io/Reader;
    new-instance v3, Lbsh/Parser;

    invoke-direct {v3, v2}, Lbsh/Parser;-><init>(Ljava/io/Reader;)V

    .line 110
    .local v3, "parser":Lbsh/Parser;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lbsh/Parser;->setRetainComments(Z)V

    .line 111
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lbsh/Parser;->Line()Z

    move-result v4

    if-nez v4, :cond_2

    .line 112
    if-eqz v0, :cond_1

    .line 113
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lbsh/Parser;->popNode()Lbsh/SimpleNode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    .line 107
    .end local v2    # "in":Ljava/io/Reader;
    .end local v3    # "parser":Lbsh/Parser;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_3
    return-void
.end method


# virtual methods
.method public final AdditiveExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1652
    const/4 v0, 0x0

    .line 1653
    .local v0, "t":Lbsh/Token;
    invoke-virtual {p0}, Lbsh/Parser;->MultiplicativeExpression()V

    .line 1656
    :goto_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1662
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x2a

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v1, v2

    .line 1663
    goto :goto_2

    .line 1660
    :pswitch_0
    nop

    .line 1665
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_1
    packed-switch v1, :pswitch_data_1

    .line 1673
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x2b

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 1674
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1675
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 1670
    :pswitch_1
    const/16 v1, 0x67

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1671
    goto :goto_1

    .line 1667
    :pswitch_2
    const/16 v1, 0x66

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1668
    nop

    .line 1677
    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->MultiplicativeExpression()V

    .line 1678
    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    .line 1679
    .local v1, "jjtn001":Lbsh/BSHBinaryExpression;
    const/4 v2, 0x1

    .line 1680
    .local v2, "jjtc001":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1681
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1683
    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1684
    const/4 v2, 0x0

    .line 1685
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1686
    iget v4, v0, Lbsh/Token;->kind:I

    iput v4, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1688
    if-eqz v2, :cond_2

    .line 1689
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1690
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1693
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :cond_2
    goto :goto_0

    .line 1688
    .restart local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .restart local v2    # "jjtc001":Z
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 1689
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1690
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_3
    throw v4

    .line 1694
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x66
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final AllocationExpression()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2520
    new-instance v0, Lbsh/BSHAllocationExpression;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lbsh/BSHAllocationExpression;-><init>(I)V

    .line 2521
    .local v0, "jjtn000":Lbsh/BSHAllocationExpression;
    const/4 v1, 0x1

    .line 2522
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 2523
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 2525
    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_0
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_2_18(I)Z

    move-result v4

    const/16 v5, 0x28

    if-eqz v4, :cond_0

    .line 2526
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2527
    invoke-virtual {p0}, Lbsh/Parser;->PrimitiveType()V

    .line 2528
    invoke-virtual {p0}, Lbsh/Parser;->ArrayDimensions()V

    goto :goto_0

    .line 2530
    :cond_0
    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v4

    :cond_1
    packed-switch v4, :pswitch_data_0

    .line 2553
    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_2

    .line 2532
    :pswitch_0
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2533
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    .line 2534
    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v4, v6, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v4

    :cond_2
    sparse-switch v4, :sswitch_data_0

    .line 2547
    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_1

    .line 2536
    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ArrayDimensions()V

    .line 2537
    goto :goto_0

    .line 2539
    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->Arguments()V

    .line 2540
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_2_17(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2541
    invoke-virtual {p0}, Lbsh/Parser;->Block()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2573
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 2574
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2575
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2578
    :cond_4
    return-void

    .line 2547
    :goto_1
    const/16 v4, 0x41

    :try_start_1
    iget v5, p0, Lbsh/Parser;->jj_gen:I

    aput v5, v3, v4

    .line 2548
    invoke-direct {p0, v6}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2549
    new-instance v3, Lbsh/ParseException;

    invoke-direct {v3}, Lbsh/ParseException;-><init>()V

    .end local v0    # "jjtn000":Lbsh/BSHAllocationExpression;
    .end local v1    # "jjtc000":Z
    throw v3

    .line 2553
    .restart local v0    # "jjtn000":Lbsh/BSHAllocationExpression;
    .restart local v1    # "jjtc000":Z
    :goto_2
    const/16 v4, 0x42

    iget v5, p0, Lbsh/Parser;->jj_gen:I

    aput v5, v3, v4

    .line 2554
    invoke-direct {p0, v6}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2555
    new-instance v3, Lbsh/ParseException;

    invoke-direct {v3}, Lbsh/ParseException;-><init>()V

    .end local v0    # "jjtn000":Lbsh/BSHAllocationExpression;
    .end local v1    # "jjtc000":Z
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2558
    .restart local v0    # "jjtn000":Lbsh/BSHAllocationExpression;
    .restart local v1    # "jjtc000":Z
    :catchall_0
    move-exception v3

    .line 2559
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_5

    .line 2560
    :try_start_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 2561
    const/4 v1, 0x0

    goto :goto_3

    .line 2563
    :cond_5
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 2565
    :goto_3
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_7

    .line 2568
    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_6

    .line 2569
    move-object v4, v3

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHAllocationExpression;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2571
    .restart local v0    # "jjtn000":Lbsh/BSHAllocationExpression;
    .restart local v1    # "jjtc000":Z
    :cond_6
    move-object v4, v3

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHAllocationExpression;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2566
    .restart local v0    # "jjtn000":Lbsh/BSHAllocationExpression;
    .restart local v1    # "jjtc000":Z
    :cond_7
    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHAllocationExpression;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2573
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHAllocationExpression;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_8

    .line 2574
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2575
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_8
    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x48 -> :sswitch_1
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method public final AmbiguousName()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1007
    new-instance v0, Lbsh/BSHAmbiguousName;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lbsh/BSHAmbiguousName;-><init>(I)V

    .line 1008
    .local v0, "jjtn000":Lbsh/BSHAmbiguousName;
    const/4 v1, 0x1

    .line 1009
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1010
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1013
    const/16 v2, 0x45

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v4

    .line 1014
    .local v4, "t":Lbsh/Token;
    new-instance v5, Ljava/lang/StringBuffer;

    iget-object v6, v4, Lbsh/Token;->image:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1017
    .local v5, "s":Ljava/lang/StringBuffer;
    :goto_0
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lbsh/Parser;->jj_2_7(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1022
    const/16 v6, 0x50

    invoke-direct {p0, v6}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1023
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v6

    move-object v4, v6

    .line 1024
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1026
    :cond_0
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 1027
    const/4 v1, 0x0

    .line 1028
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1029
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lbsh/BSHAmbiguousName;->text:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    if-eqz v1, :cond_1

    .line 1032
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 1033
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1036
    :cond_1
    return-void

    .line 1031
    .end local v4    # "t":Lbsh/Token;
    .end local v5    # "s":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 1032
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 1033
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v2
.end method

.method public final AndExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1403
    const/4 v0, 0x0

    .line 1404
    .local v0, "t":Lbsh/Token;
    invoke-virtual {p0}, Lbsh/Parser;->EqualityExpression()V

    .line 1407
    :goto_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1413
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x21

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v1, v2

    .line 1414
    goto :goto_2

    .line 1411
    :pswitch_0
    nop

    .line 1416
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_1
    packed-switch v1, :pswitch_data_1

    .line 1424
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x22

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 1425
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1426
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 1421
    :pswitch_1
    const/16 v1, 0x6b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1422
    goto :goto_1

    .line 1418
    :pswitch_2
    const/16 v1, 0x6a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1419
    nop

    .line 1428
    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->EqualityExpression()V

    .line 1429
    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    .line 1430
    .local v1, "jjtn001":Lbsh/BSHBinaryExpression;
    const/4 v2, 0x1

    .line 1431
    .local v2, "jjtc001":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1432
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1434
    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1435
    const/4 v2, 0x0

    .line 1436
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1437
    iget v4, v0, Lbsh/Token;->kind:I

    iput v4, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1439
    if-eqz v2, :cond_2

    .line 1440
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1441
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1444
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :cond_2
    goto :goto_0

    .line 1439
    .restart local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .restart local v2    # "jjtc001":Z
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 1440
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1441
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_3
    throw v4

    .line 1445
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6a
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6a
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final ArgumentList()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2502
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 2505
    :goto_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 2510
    iget-object v0, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v1, 0x40

    iget v2, p0, Lbsh/Parser;->jj_gen:I

    aput v2, v0, v1

    .line 2511
    goto :goto_1

    .line 2508
    :pswitch_0
    nop

    .line 2513
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2514
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    goto :goto_0

    .line 2516
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public final Arguments()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2439
    new-instance v0, Lbsh/BSHArguments;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lbsh/BSHArguments;-><init>(I)V

    .line 2440
    .local v0, "jjtn000":Lbsh/BSHArguments;
    const/4 v1, 0x1

    .line 2441
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 2442
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 2444
    const/16 v2, 0x48

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2445
    iget v2, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v2

    :cond_0
    sparse-switch v2, :sswitch_data_0

    .line 2474
    iget-object v2, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_0

    .line 2471
    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ArgumentList()V

    .line 2472
    goto :goto_1

    .line 2474
    :goto_0
    const/16 v4, 0x3f

    iget v5, p0, Lbsh/Parser;->jj_gen:I

    aput v5, v2, v4

    .line 2477
    :goto_1
    const/16 v2, 0x49

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2493
    if-eqz v1, :cond_1

    .line 2494
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2495
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2498
    :cond_1
    return-void

    .line 2478
    :catchall_0
    move-exception v2

    .line 2479
    .local v2, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 2480
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 2481
    const/4 v1, 0x0

    goto :goto_2

    .line 2483
    :cond_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 2485
    :goto_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    .line 2488
    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_3

    .line 2489
    move-object v4, v2

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHArguments;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2491
    .restart local v0    # "jjtn000":Lbsh/BSHArguments;
    .restart local v1    # "jjtc000":Z
    :cond_3
    move-object v4, v2

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHArguments;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2486
    .restart local v0    # "jjtn000":Lbsh/BSHArguments;
    .restart local v1    # "jjtc000":Z
    :cond_4
    move-object v4, v2

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHArguments;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2493
    .end local v2    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHArguments;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_5

    .line 2494
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2495
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5
    throw v2

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ArrayDimensions()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2582
    new-instance v0, Lbsh/BSHArrayDimensions;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lbsh/BSHArrayDimensions;-><init>(I)V

    .line 2583
    .local v0, "jjtn000":Lbsh/BSHArrayDimensions;
    const/4 v1, 0x1

    .line 2584
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 2585
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 2587
    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_0
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_2_21(I)Z

    move-result v4

    const/16 v5, 0x4d

    const/16 v6, 0x4c

    if-eqz v4, :cond_1

    .line 2590
    :goto_0
    invoke-direct {p0, v6}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2591
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 2592
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2593
    invoke-virtual {v0}, Lbsh/BSHArrayDimensions;->addDefinedDimension()V

    .line 2594
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_2_19(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 2602
    :cond_0
    :goto_1
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_2_20(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2607
    invoke-direct {p0, v6}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2608
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2609
    invoke-virtual {v0}, Lbsh/BSHArrayDimensions;->addUndefinedDimension()V

    goto :goto_1

    .line 2612
    :cond_1
    iget v3, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v3

    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 2631
    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_4

    .line 2616
    :goto_2
    :pswitch_0
    invoke-direct {p0, v6}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2617
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2618
    invoke-virtual {v0}, Lbsh/BSHArrayDimensions;->addUndefinedDimension()V

    .line 2619
    iget v3, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v3

    :cond_3
    packed-switch v3, :pswitch_data_1

    .line 2624
    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_3

    .line 2622
    :pswitch_1
    goto :goto_2

    .line 2624
    :goto_3
    const/16 v4, 0x43

    iget v5, p0, Lbsh/Parser;->jj_gen:I

    aput v5, v3, v4

    .line 2625
    nop

    .line 2628
    invoke-virtual {p0}, Lbsh/Parser;->ArrayInitializer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2629
    nop

    .line 2651
    :cond_4
    if-eqz v1, :cond_5

    .line 2652
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2653
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2656
    :cond_5
    return-void

    .line 2631
    :goto_4
    const/16 v5, 0x44

    :try_start_1
    iget v6, p0, Lbsh/Parser;->jj_gen:I

    aput v6, v3, v5

    .line 2632
    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2633
    new-instance v3, Lbsh/ParseException;

    invoke-direct {v3}, Lbsh/ParseException;-><init>()V

    .end local v0    # "jjtn000":Lbsh/BSHArrayDimensions;
    .end local v1    # "jjtc000":Z
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2636
    .restart local v0    # "jjtn000":Lbsh/BSHArrayDimensions;
    .restart local v1    # "jjtc000":Z
    :catchall_0
    move-exception v3

    .line 2637
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_6

    .line 2638
    :try_start_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 2639
    const/4 v1, 0x0

    goto :goto_5

    .line 2641
    :cond_6
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 2643
    :goto_5
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_8

    .line 2646
    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_7

    .line 2647
    move-object v4, v3

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHArrayDimensions;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2649
    .restart local v0    # "jjtn000":Lbsh/BSHArrayDimensions;
    .restart local v1    # "jjtc000":Z
    :cond_7
    move-object v4, v3

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHArrayDimensions;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2644
    .restart local v0    # "jjtn000":Lbsh/BSHArrayDimensions;
    .restart local v1    # "jjtc000":Z
    :cond_8
    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHArrayDimensions;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2651
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHArrayDimensions;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_9

    .line 2652
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2653
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_9
    throw v3

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4c
        :pswitch_1
    .end packed-switch
.end method

.method public final ArrayInitializer()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 619
    new-instance v0, Lbsh/BSHArrayInitializer;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lbsh/BSHArrayInitializer;-><init>(I)V

    .line 620
    .local v0, "jjtn000":Lbsh/BSHArrayInitializer;
    const/4 v1, 0x1

    .line 621
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 622
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 624
    const/16 v2, 0x4a

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 625
    iget v2, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v2

    :cond_0
    const/16 v5, 0x4f

    sparse-switch v2, :sswitch_data_0

    .line 665
    iget-object v2, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_1

    .line 652
    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->VariableInitializer()V

    .line 655
    :goto_0
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_2_4(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 660
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 661
    invoke-virtual {p0}, Lbsh/Parser;->VariableInitializer()V

    goto :goto_0

    .line 665
    :goto_1
    const/16 v6, 0xe

    iget v7, p0, Lbsh/Parser;->jj_gen:I

    aput v7, v2, v6

    .line 668
    :cond_1
    iget v2, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v2, v4, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v2

    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 673
    iget-object v2, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_2

    .line 670
    :pswitch_0
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 671
    goto :goto_3

    .line 673
    :goto_2
    const/16 v4, 0xf

    iget v5, p0, Lbsh/Parser;->jj_gen:I

    aput v5, v2, v4

    .line 676
    :goto_3
    const/16 v2, 0x4b

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    if-eqz v1, :cond_3

    .line 693
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 694
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 697
    :cond_3
    return-void

    .line 677
    :catchall_0
    move-exception v2

    .line 678
    .local v2, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_4

    .line 679
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 680
    const/4 v1, 0x0

    goto :goto_4

    .line 682
    :cond_4
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 684
    :goto_4
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_6

    .line 687
    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_5

    .line 688
    move-object v4, v2

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHArrayInitializer;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 690
    .restart local v0    # "jjtn000":Lbsh/BSHArrayInitializer;
    .restart local v1    # "jjtc000":Z
    :cond_5
    move-object v4, v2

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHArrayInitializer;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 685
    .restart local v0    # "jjtn000":Lbsh/BSHArrayInitializer;
    .restart local v1    # "jjtc000":Z
    :cond_6
    move-object v4, v2

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHArrayInitializer;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 692
    .end local v2    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHArrayInitializer;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_7

    .line 693
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 694
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_7
    throw v2

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4a -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public final Assignment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1105
    new-instance v0, Lbsh/BSHAssignment;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lbsh/BSHAssignment;-><init>(I)V

    .line 1106
    .local v0, "jjtn000":Lbsh/BSHAssignment;
    const/4 v1, 0x1

    .line 1107
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1108
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1110
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    .line 1111
    invoke-virtual {p0}, Lbsh/Parser;->AssignmentOperator()I

    move-result v3

    .line 1112
    .local v3, "op":I
    iput v3, v0, Lbsh/BSHAssignment;->operator:I

    .line 1113
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    if-eqz v1, :cond_0

    .line 1130
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 1131
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1134
    :cond_0
    return-void

    .line 1114
    .end local v3    # "op":I
    :catchall_0
    move-exception v3

    .line 1115
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 1116
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 1117
    const/4 v1, 0x0

    goto :goto_0

    .line 1119
    :cond_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 1121
    :goto_0
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_3

    .line 1124
    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_2

    .line 1125
    move-object v4, v3

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHAssignment;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 1127
    .restart local v0    # "jjtn000":Lbsh/BSHAssignment;
    .restart local v1    # "jjtc000":Z
    :cond_2
    move-object v4, v3

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHAssignment;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 1122
    .restart local v0    # "jjtn000":Lbsh/BSHAssignment;
    .restart local v1    # "jjtc000":Z
    :cond_3
    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHAssignment;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1129
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHAssignment;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_4

    .line 1130
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 1131
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_4
    throw v3
.end method

.method public final AssignmentOperator()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1138
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 1185
    iget-object v0, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x18

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v0, v2

    .line 1186
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1187
    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    .line 1182
    :sswitch_0
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1183
    goto :goto_0

    .line 1179
    :sswitch_1
    const/16 v0, 0x84

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1180
    goto :goto_0

    .line 1176
    :sswitch_2
    const/16 v0, 0x83

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1177
    goto :goto_0

    .line 1173
    :sswitch_3
    const/16 v0, 0x82

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1174
    goto :goto_0

    .line 1170
    :sswitch_4
    const/16 v0, 0x81

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1171
    goto :goto_0

    .line 1167
    :sswitch_5
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1168
    goto :goto_0

    .line 1149
    :sswitch_6
    const/16 v0, 0x7f

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1150
    goto :goto_0

    .line 1161
    :sswitch_7
    const/16 v0, 0x7e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1162
    goto :goto_0

    .line 1164
    :sswitch_8
    const/16 v0, 0x7c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1165
    goto :goto_0

    .line 1158
    :sswitch_9
    const/16 v0, 0x7a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1159
    goto :goto_0

    .line 1146
    :sswitch_a
    const/16 v0, 0x79

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1147
    goto :goto_0

    .line 1143
    :sswitch_b
    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1144
    goto :goto_0

    .line 1155
    :sswitch_c
    const/16 v0, 0x77

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1156
    goto :goto_0

    .line 1152
    :sswitch_d
    const/16 v0, 0x76

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1153
    goto :goto_0

    .line 1140
    :sswitch_e
    const/16 v0, 0x51

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1141
    nop

    .line 1189
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    .line 1190
    .local v0, "t":Lbsh/Token;
    iget v1, v0, Lbsh/Token;->kind:I

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x51 -> :sswitch_e
        0x76 -> :sswitch_d
        0x77 -> :sswitch_c
        0x78 -> :sswitch_b
        0x79 -> :sswitch_a
        0x7a -> :sswitch_9
        0x7c -> :sswitch_8
        0x7e -> :sswitch_7
        0x7f -> :sswitch_6
        0x80 -> :sswitch_5
        0x81 -> :sswitch_4
        0x82 -> :sswitch_3
        0x83 -> :sswitch_2
        0x84 -> :sswitch_1
        0x85 -> :sswitch_0
    .end sparse-switch
.end method

.method public final Block()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2758
    new-instance v0, Lbsh/BSHBlock;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lbsh/BSHBlock;-><init>(I)V

    .line 2759
    .local v0, "jjtn000":Lbsh/BSHBlock;
    const/4 v1, 0x1

    .line 2760
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 2761
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v2, 0x0

    .line 2763
    .local v2, "s":Lbsh/Token;
    const/4 v3, 0x1

    :try_start_0
    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v4

    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 2768
    iget-object v4, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_0

    .line 2765
    :pswitch_0
    const/16 v4, 0x30

    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v4

    move-object v2, v4

    .line 2766
    goto :goto_1

    .line 2768
    :goto_0
    const/16 v5, 0x47

    iget v6, p0, Lbsh/Parser;->jj_gen:I

    aput v6, v4, v5

    .line 2771
    :goto_1
    const/16 v4, 0x4a

    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2774
    :goto_2
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_2_23(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2779
    invoke-virtual {p0}, Lbsh/Parser;->BlockStatement()V

    goto :goto_2

    .line 2781
    :cond_1
    const/16 v4, 0x4b

    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2782
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2783
    const/4 v1, 0x0

    .line 2784
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2785
    if-eqz v2, :cond_2

    iput-boolean v3, v0, Lbsh/BSHBlock;->isStatic:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2801
    :cond_2
    if-eqz v1, :cond_3

    .line 2802
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2803
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2806
    :cond_3
    return-void

    .line 2786
    :catchall_0
    move-exception v4

    .line 2787
    .local v4, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_4

    .line 2788
    :try_start_1
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 2789
    const/4 v1, 0x0

    goto :goto_3

    .line 2791
    :cond_4
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 2793
    :goto_3
    instance-of v5, v4, Ljava/lang/RuntimeException;

    if-nez v5, :cond_6

    .line 2796
    instance-of v5, v4, Lbsh/ParseException;

    if-eqz v5, :cond_5

    .line 2797
    move-object v5, v4

    check-cast v5, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHBlock;
    .end local v1    # "jjtc000":Z
    .end local v2    # "s":Lbsh/Token;
    throw v5

    .line 2799
    .restart local v0    # "jjtn000":Lbsh/BSHBlock;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "s":Lbsh/Token;
    :cond_5
    move-object v5, v4

    check-cast v5, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHBlock;
    .end local v1    # "jjtc000":Z
    .end local v2    # "s":Lbsh/Token;
    throw v5

    .line 2794
    .restart local v0    # "jjtn000":Lbsh/BSHBlock;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "s":Lbsh/Token;
    :cond_6
    move-object v5, v4

    check-cast v5, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHBlock;
    .end local v1    # "jjtc000":Z
    .end local v2    # "s":Lbsh/Token;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2801
    .end local v4    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHBlock;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "s":Lbsh/Token;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_7

    .line 2802
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2803
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_7
    throw v4

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method

.method public final BlockStatement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2809
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_24(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2810
    invoke-virtual {p0}, Lbsh/Parser;->ClassDeclaration()V

    goto :goto_0

    .line 2811
    :cond_0
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_25(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2812
    invoke-virtual {p0}, Lbsh/Parser;->MethodDeclaration()V

    goto :goto_0

    .line 2813
    :cond_1
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_26(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2814
    invoke-virtual {p0}, Lbsh/Parser;->MethodDeclaration()V

    goto :goto_0

    .line 2815
    :cond_2
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_27(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2816
    invoke-virtual {p0}, Lbsh/Parser;->TypedVariableDeclaration()V

    .line 2817
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_0

    .line 2818
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_28(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2819
    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    goto :goto_0

    .line 2821
    :cond_4
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :cond_5
    sparse-switch v0, :sswitch_data_0

    .line 2832
    iget-object v0, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x48

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v0, v2

    .line 2833
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2834
    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    .line 2829
    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->FormalComment()V

    .line 2830
    goto :goto_0

    .line 2826
    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->PackageDeclaration()V

    .line 2827
    goto :goto_0

    .line 2823
    :sswitch_2
    invoke-virtual {p0}, Lbsh/Parser;->ImportDeclaration()V

    .line 2824
    nop

    .line 2837
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x2a -> :sswitch_1
        0x44 -> :sswitch_0
    .end sparse-switch
.end method

.method public final BooleanLiteral()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2412
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 2422
    iget-object v0, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x3e

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v0, v2

    .line 2423
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2424
    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    .line 2414
    :sswitch_0
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2415
    const/4 v0, 0x1

    return v0

    .line 2418
    :sswitch_1
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2419
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_1
        0x37 -> :sswitch_0
    .end sparse-switch
.end method

.method public final BreakStatement()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 3452
    new-instance v0, Lbsh/BSHReturnStatement;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Lbsh/BSHReturnStatement;-><init>(I)V

    .line 3453
    .local v0, "jjtn000":Lbsh/BSHReturnStatement;
    const/4 v1, 0x1

    .line 3454
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 3455
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 3457
    const/16 v2, 0xc

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3458
    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v4

    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 3463
    iget-object v4, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_0

    .line 3460
    :pswitch_0
    const/16 v4, 0x45

    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3461
    goto :goto_1

    .line 3463
    :goto_0
    const/16 v5, 0x53

    iget v6, p0, Lbsh/Parser;->jj_gen:I

    aput v6, v4, v5

    .line 3466
    :goto_1
    const/16 v4, 0x4e

    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3467
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3468
    const/4 v1, 0x0

    .line 3469
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3470
    iput v2, v0, Lbsh/BSHReturnStatement;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3472
    if-eqz v1, :cond_1

    .line 3473
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3474
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3477
    :cond_1
    return-void

    .line 3472
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 3473
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3474
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v2

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method public final CastExpression()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2047
    new-instance v0, Lbsh/BSHCastExpression;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lbsh/BSHCastExpression;-><init>(I)V

    .line 2048
    .local v0, "jjtn000":Lbsh/BSHCastExpression;
    const/4 v1, 0x1

    .line 2049
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 2050
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 2052
    const v2, 0x7fffffff

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_2_13(I)Z

    move-result v2

    const/16 v4, 0x49

    const/16 v5, 0x48

    if-eqz v2, :cond_0

    .line 2053
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2054
    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    .line 2055
    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2056
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    goto :goto_0

    .line 2058
    :cond_0
    iget v2, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v2

    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 2066
    iget-object v2, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_1

    .line 2060
    :pswitch_0
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2061
    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    .line 2062
    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2063
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpressionNotPlusMinus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2064
    nop

    .line 2086
    :goto_0
    if-eqz v1, :cond_2

    .line 2087
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2088
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2091
    :cond_2
    return-void

    .line 2066
    :goto_1
    const/16 v4, 0x37

    :try_start_1
    iget v5, p0, Lbsh/Parser;->jj_gen:I

    aput v5, v2, v4

    .line 2067
    invoke-direct {p0, v6}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2068
    new-instance v2, Lbsh/ParseException;

    invoke-direct {v2}, Lbsh/ParseException;-><init>()V

    .end local v0    # "jjtn000":Lbsh/BSHCastExpression;
    .end local v1    # "jjtc000":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2071
    .restart local v0    # "jjtn000":Lbsh/BSHCastExpression;
    .restart local v1    # "jjtc000":Z
    :catchall_0
    move-exception v2

    .line 2072
    .local v2, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 2073
    :try_start_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 2074
    const/4 v1, 0x0

    goto :goto_2

    .line 2076
    :cond_3
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 2078
    :goto_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_5

    .line 2081
    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_4

    .line 2082
    move-object v4, v2

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHCastExpression;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2084
    .restart local v0    # "jjtn000":Lbsh/BSHCastExpression;
    .restart local v1    # "jjtc000":Z
    :cond_4
    move-object v4, v2

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHCastExpression;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2079
    .restart local v0    # "jjtn000":Lbsh/BSHCastExpression;
    .restart local v1    # "jjtc000":Z
    :cond_5
    move-object v4, v2

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHCastExpression;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2086
    .end local v2    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHCastExpression;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_6

    .line 2087
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2088
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_6
    throw v2

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method

.method public final CastLookahead()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1929
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_10(I)Z

    move-result v0

    const/16 v1, 0x48

    if-eqz v0, :cond_0

    .line 1930
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1931
    invoke-virtual {p0}, Lbsh/Parser;->PrimitiveType()V

    goto/16 :goto_0

    .line 1932
    :cond_0
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_11(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1933
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1934
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    .line 1935
    const/16 v0, 0x4c

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1936
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    goto :goto_0

    .line 1938
    :cond_1
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 1976
    iget-object v0, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v1, 0x34

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v0, v1

    .line 1977
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1978
    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    .line 1940
    :pswitch_0
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1941
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    .line 1942
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1943
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v2, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :cond_3
    sparse-switch v0, :sswitch_data_0

    .line 1970
    iget-object v0, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v1, 0x33

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v0, v1

    .line 1971
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1972
    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    .line 1945
    :sswitch_0
    const/16 v0, 0x57

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1946
    goto :goto_0

    .line 1948
    :sswitch_1
    const/16 v0, 0x56

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1949
    goto :goto_0

    .line 1951
    :sswitch_2
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1952
    goto :goto_0

    .line 1954
    :sswitch_3
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1955
    goto :goto_0

    .line 1957
    :sswitch_4
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1958
    goto :goto_0

    .line 1967
    :sswitch_5
    invoke-virtual {p0}, Lbsh/Parser;->Literal()V

    .line 1968
    nop

    .line 1981
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_5
        0x28 -> :sswitch_4
        0x29 -> :sswitch_5
        0x37 -> :sswitch_5
        0x39 -> :sswitch_5
        0x3c -> :sswitch_5
        0x40 -> :sswitch_5
        0x42 -> :sswitch_5
        0x43 -> :sswitch_5
        0x45 -> :sswitch_3
        0x48 -> :sswitch_2
        0x56 -> :sswitch_1
        0x57 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ClassDeclaration()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 269
    new-instance v0, Lbsh/BSHClassDeclaration;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbsh/BSHClassDeclaration;-><init>(I)V

    .line 270
    .local v0, "jjtn000":Lbsh/BSHClassDeclaration;
    const/4 v2, 0x1

    .line 271
    .local v2, "jjtc000":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 272
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 276
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v3}, Lbsh/Parser;->Modifiers(IZ)Lbsh/Modifiers;

    move-result-object v3

    .line 277
    .local v3, "mods":Lbsh/Modifiers;
    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v4

    :cond_0
    sparse-switch v4, :sswitch_data_0

    .line 286
    iget-object v4, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_5

    .line 282
    :sswitch_0
    const/16 v4, 0x25

    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 283
    iput-boolean v1, v0, Lbsh/BSHClassDeclaration;->isInterface:Z

    .line 284
    goto :goto_0

    .line 279
    :sswitch_1
    const/16 v4, 0xd

    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 280
    nop

    .line 290
    :goto_0
    const/16 v4, 0x45

    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v4

    .line 291
    .local v4, "name":Lbsh/Token;
    iget v6, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v6, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v6

    :cond_1
    packed-switch v6, :pswitch_data_0

    .line 298
    iget-object v6, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_1

    .line 293
    :pswitch_0
    const/16 v6, 0x19

    invoke-direct {p0, v6}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 294
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    .line 295
    iput-boolean v1, v0, Lbsh/BSHClassDeclaration;->extend:Z

    .line 296
    goto :goto_2

    .line 298
    :goto_1
    const/4 v7, 0x4

    iget v8, p0, Lbsh/Parser;->jj_gen:I

    aput v8, v6, v7

    .line 301
    :goto_2
    iget v6, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v6, v5, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v6

    :cond_2
    packed-switch v6, :pswitch_data_1

    .line 308
    iget-object v5, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_3

    .line 303
    :pswitch_1
    const/16 v5, 0x21

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 304
    invoke-virtual {p0}, Lbsh/Parser;->NameList()I

    move-result v5

    .line 305
    .local v5, "numInterfaces":I
    iput v5, v0, Lbsh/BSHClassDeclaration;->numInterfaces:I

    .line 306
    goto :goto_4

    .line 308
    .end local v5    # "numInterfaces":I
    :goto_3
    const/4 v6, 0x5

    iget v7, p0, Lbsh/Parser;->jj_gen:I

    aput v7, v5, v6

    .line 311
    :goto_4
    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    .line 312
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v0, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 313
    const/4 v2, 0x0

    .line 314
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 315
    iput-object v3, v0, Lbsh/BSHClassDeclaration;->modifiers:Lbsh/Modifiers;

    .line 316
    iget-object v5, v4, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v5, v0, Lbsh/BSHClassDeclaration;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    if-eqz v2, :cond_3

    .line 333
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v0, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 334
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 337
    :cond_3
    return-void

    .line 286
    .end local v4    # "name":Lbsh/Token;
    :goto_5
    const/4 v6, 0x3

    :try_start_1
    iget v7, p0, Lbsh/Parser;->jj_gen:I

    aput v7, v4, v6

    .line 287
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 288
    new-instance v4, Lbsh/ParseException;

    invoke-direct {v4}, Lbsh/ParseException;-><init>()V

    .end local v0    # "jjtn000":Lbsh/BSHClassDeclaration;
    .end local v2    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    .end local v3    # "mods":Lbsh/Modifiers;
    .restart local v0    # "jjtn000":Lbsh/BSHClassDeclaration;
    .restart local v2    # "jjtc000":Z
    :catchall_0
    move-exception v3

    .line 318
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v2, :cond_4

    .line 319
    :try_start_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 320
    const/4 v2, 0x0

    goto :goto_6

    .line 322
    :cond_4
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 324
    :goto_6
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_6

    .line 327
    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_5

    .line 328
    move-object v4, v3

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHClassDeclaration;
    .end local v2    # "jjtc000":Z
    throw v4

    .line 330
    .restart local v0    # "jjtn000":Lbsh/BSHClassDeclaration;
    .restart local v2    # "jjtc000":Z
    :cond_5
    move-object v4, v3

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHClassDeclaration;
    .end local v2    # "jjtc000":Z
    throw v4

    .line 325
    .restart local v0    # "jjtn000":Lbsh/BSHClassDeclaration;
    .restart local v2    # "jjtc000":Z
    :cond_6
    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHClassDeclaration;
    .end local v2    # "jjtc000":Z
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 332
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHClassDeclaration;
    .restart local v2    # "jjtc000":Z
    :catchall_1
    move-exception v3

    if-eqz v2, :cond_7

    .line 333
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v1}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 334
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_7
    throw v3

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_1
        0x25 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_1
    .end packed-switch
.end method

.method public final ConditionalAndExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1280
    const/4 v0, 0x0

    .line 1281
    .local v0, "t":Lbsh/Token;
    invoke-virtual {p0}, Lbsh/Parser;->InclusiveOrExpression()V

    .line 1284
    :goto_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1290
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x1c

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v1, v2

    .line 1291
    goto :goto_2

    .line 1288
    :pswitch_0
    nop

    .line 1293
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_1
    packed-switch v1, :pswitch_data_1

    .line 1301
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x1d

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 1302
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1303
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 1298
    :pswitch_1
    const/16 v1, 0x63

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1299
    goto :goto_1

    .line 1295
    :pswitch_2
    const/16 v1, 0x62

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1296
    nop

    .line 1305
    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->InclusiveOrExpression()V

    .line 1306
    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    .line 1307
    .local v1, "jjtn001":Lbsh/BSHBinaryExpression;
    const/4 v2, 0x1

    .line 1308
    .local v2, "jjtc001":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1309
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1311
    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1312
    const/4 v2, 0x0

    .line 1313
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1314
    iget v4, v0, Lbsh/Token;->kind:I

    iput v4, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    if-eqz v2, :cond_2

    .line 1317
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1318
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1321
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :cond_2
    goto :goto_0

    .line 1316
    .restart local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .restart local v2    # "jjtc001":Z
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 1317
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1318
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_3
    throw v4

    .line 1322
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final ConditionalExpression()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1195
    invoke-virtual {p0}, Lbsh/Parser;->ConditionalOrExpression()V

    .line 1196
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 1229
    iget-object v0, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v1, 0x19

    iget v2, p0, Lbsh/Parser;->jj_gen:I

    aput v2, v0, v1

    goto :goto_1

    .line 1198
    :pswitch_0
    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1199
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 1200
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1201
    new-instance v0, Lbsh/BSHTernaryExpression;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lbsh/BSHTernaryExpression;-><init>(I)V

    .line 1202
    .local v0, "jjtn001":Lbsh/BSHTernaryExpression;
    const/4 v1, 0x1

    .line 1203
    .local v1, "jjtc001":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1204
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1206
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0}, Lbsh/Parser;->ConditionalExpression()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    if-eqz v1, :cond_1

    .line 1223
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1224
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1227
    :cond_1
    goto :goto_1

    .line 1207
    :catchall_0
    move-exception v3

    .line 1208
    .local v3, "jjte001":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 1209
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 1210
    const/4 v1, 0x0

    goto :goto_0

    .line 1212
    :cond_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 1214
    :goto_0
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    .line 1217
    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_3

    .line 1218
    move-object v4, v3

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn001":Lbsh/BSHTernaryExpression;
    .end local v1    # "jjtc001":Z
    throw v4

    .line 1220
    .restart local v0    # "jjtn001":Lbsh/BSHTernaryExpression;
    .restart local v1    # "jjtc001":Z
    :cond_3
    move-object v4, v3

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn001":Lbsh/BSHTernaryExpression;
    .end local v1    # "jjtc001":Z
    throw v4

    .line 1215
    .restart local v0    # "jjtn001":Lbsh/BSHTernaryExpression;
    .restart local v1    # "jjtc001":Z
    :cond_4
    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn001":Lbsh/BSHTernaryExpression;
    .end local v1    # "jjtc001":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1222
    .end local v3    # "jjte001":Ljava/lang/Throwable;
    .restart local v0    # "jjtn001":Lbsh/BSHTernaryExpression;
    .restart local v1    # "jjtc001":Z
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_5

    .line 1223
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1224
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5
    throw v3

    .line 1232
    .end local v0    # "jjtn001":Lbsh/BSHTernaryExpression;
    .end local v1    # "jjtc001":Z
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch
.end method

.method public final ConditionalOrExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1235
    const/4 v0, 0x0

    .line 1236
    .local v0, "t":Lbsh/Token;
    invoke-virtual {p0}, Lbsh/Parser;->ConditionalAndExpression()V

    .line 1239
    :goto_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1245
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x1a

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v1, v2

    .line 1246
    goto :goto_2

    .line 1243
    :pswitch_0
    nop

    .line 1248
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_1
    packed-switch v1, :pswitch_data_1

    .line 1256
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x1b

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 1257
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1258
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 1253
    :pswitch_1
    const/16 v1, 0x61

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1254
    goto :goto_1

    .line 1250
    :pswitch_2
    const/16 v1, 0x60

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1251
    nop

    .line 1260
    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->ConditionalAndExpression()V

    .line 1261
    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    .line 1262
    .local v1, "jjtn001":Lbsh/BSHBinaryExpression;
    const/4 v2, 0x1

    .line 1263
    .local v2, "jjtc001":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1264
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1266
    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1267
    const/4 v2, 0x0

    .line 1268
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1269
    iget v4, v0, Lbsh/Token;->kind:I

    iput v4, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    if-eqz v2, :cond_2

    .line 1272
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1273
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1276
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :cond_2
    goto :goto_0

    .line 1271
    .restart local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .restart local v2    # "jjtc001":Z
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 1272
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1273
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_3
    throw v4

    .line 1277
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x60
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final ContinueStatement()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 3481
    new-instance v0, Lbsh/BSHReturnStatement;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Lbsh/BSHReturnStatement;-><init>(I)V

    .line 3482
    .local v0, "jjtn000":Lbsh/BSHReturnStatement;
    const/4 v1, 0x1

    .line 3483
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 3484
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 3486
    const/16 v2, 0x13

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3487
    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v4

    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 3492
    iget-object v4, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_0

    .line 3489
    :pswitch_0
    const/16 v4, 0x45

    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3490
    goto :goto_1

    .line 3492
    :goto_0
    const/16 v5, 0x54

    iget v6, p0, Lbsh/Parser;->jj_gen:I

    aput v6, v4, v5

    .line 3495
    :goto_1
    const/16 v4, 0x4e

    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3496
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3497
    const/4 v1, 0x0

    .line 3498
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3499
    iput v2, v0, Lbsh/BSHReturnStatement;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3501
    if-eqz v1, :cond_1

    .line 3502
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3503
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3506
    :cond_1
    return-void

    .line 3501
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 3502
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3503
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v2

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method public final DoStatement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 3055
    new-instance v0, Lbsh/BSHWhileStatement;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lbsh/BSHWhileStatement;-><init>(I)V

    .line 3056
    .local v0, "jjtn000":Lbsh/BSHWhileStatement;
    const/4 v1, 0x1

    .line 3057
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 3058
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 3060
    const/16 v2, 0x15

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3061
    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    .line 3062
    const/16 v2, 0x3b

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3063
    const/16 v2, 0x48

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3064
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 3065
    const/16 v2, 0x49

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3066
    const/16 v2, 0x4e

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3067
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3068
    const/4 v1, 0x0

    .line 3069
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3070
    iput-boolean v3, v0, Lbsh/BSHWhileStatement;->isDoStatement:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3086
    if-eqz v1, :cond_0

    .line 3087
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3088
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3091
    :cond_0
    return-void

    .line 3071
    :catchall_0
    move-exception v2

    .line 3072
    .local v2, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 3073
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 3074
    const/4 v1, 0x0

    goto :goto_0

    .line 3076
    :cond_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 3078
    :goto_0
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_3

    .line 3081
    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_2

    .line 3082
    move-object v4, v2

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHWhileStatement;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 3084
    .restart local v0    # "jjtn000":Lbsh/BSHWhileStatement;
    .restart local v1    # "jjtc000":Z
    :cond_2
    move-object v4, v2

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHWhileStatement;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 3079
    .restart local v0    # "jjtn000":Lbsh/BSHWhileStatement;
    .restart local v1    # "jjtc000":Z
    :cond_3
    move-object v4, v2

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHWhileStatement;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3086
    .end local v2    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHWhileStatement;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    .line 3087
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3088
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_4
    throw v2
.end method

.method public final EmptyStatement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2860
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2861
    return-void
.end method

.method public final EnhancedForStatement()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 3246
    new-instance v0, Lbsh/BSHEnhancedForStatement;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lbsh/BSHEnhancedForStatement;-><init>(I)V

    .line 3247
    .local v0, "jjtn000":Lbsh/BSHEnhancedForStatement;
    const/4 v1, 0x1

    .line 3248
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 3249
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v2, 0x0

    .line 3251
    .local v2, "t":Lbsh/Token;
    const/4 v3, 0x4

    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_2_30(I)Z

    move-result v3

    const/16 v5, 0x49

    const/16 v6, 0x59

    const/16 v7, 0x45

    const/16 v8, 0x48

    const/16 v9, 0x1e

    if-eqz v3, :cond_0

    .line 3252
    invoke-direct {p0, v9}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3253
    invoke-direct {p0, v8}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3254
    invoke-direct {p0, v7}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v3

    move-object v2, v3

    .line 3255
    invoke-direct {p0, v6}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3256
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 3257
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3258
    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    .line 3259
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3260
    const/4 v1, 0x0

    .line 3261
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3262
    iget-object v3, v2, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v3, v0, Lbsh/BSHEnhancedForStatement;->varName:Ljava/lang/String;

    goto :goto_0

    .line 3264
    :cond_0
    iget v3, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v10, -0x1

    if-ne v3, v10, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v3

    :cond_1
    packed-switch v3, :pswitch_data_0

    .line 3280
    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_1

    .line 3266
    :pswitch_0
    invoke-direct {p0, v9}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3267
    invoke-direct {p0, v8}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3268
    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    .line 3269
    invoke-direct {p0, v7}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v3

    move-object v2, v3

    .line 3270
    invoke-direct {p0, v6}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3271
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 3272
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3273
    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    .line 3274
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3275
    const/4 v1, 0x0

    .line 3276
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3277
    iget-object v3, v2, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v3, v0, Lbsh/BSHEnhancedForStatement;->varName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3278
    nop

    .line 3300
    :goto_0
    if-eqz v1, :cond_2

    .line 3301
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3302
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3305
    :cond_2
    return-void

    .line 3280
    :goto_1
    const/16 v5, 0x4f

    :try_start_1
    iget v6, p0, Lbsh/Parser;->jj_gen:I

    aput v6, v3, v5

    .line 3281
    invoke-direct {p0, v10}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3282
    new-instance v3, Lbsh/ParseException;

    invoke-direct {v3}, Lbsh/ParseException;-><init>()V

    .end local v0    # "jjtn000":Lbsh/BSHEnhancedForStatement;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3285
    .restart local v0    # "jjtn000":Lbsh/BSHEnhancedForStatement;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :catchall_0
    move-exception v3

    .line 3286
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 3287
    :try_start_2
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 3288
    const/4 v1, 0x0

    goto :goto_2

    .line 3290
    :cond_3
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 3292
    :goto_2
    instance-of v5, v3, Ljava/lang/RuntimeException;

    if-nez v5, :cond_5

    .line 3295
    instance-of v5, v3, Lbsh/ParseException;

    if-eqz v5, :cond_4

    .line 3296
    move-object v5, v3

    check-cast v5, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHEnhancedForStatement;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v5

    .line 3298
    .restart local v0    # "jjtn000":Lbsh/BSHEnhancedForStatement;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :cond_4
    move-object v5, v3

    check-cast v5, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHEnhancedForStatement;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v5

    .line 3293
    .restart local v0    # "jjtn000":Lbsh/BSHEnhancedForStatement;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :cond_5
    move-object v5, v3

    check-cast v5, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHEnhancedForStatement;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3300
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHEnhancedForStatement;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_6

    .line 3301
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3302
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_6
    throw v3

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method

.method public final EqualityExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1448
    const/4 v0, 0x0

    .line 1449
    .local v0, "t":Lbsh/Token;
    invoke-virtual {p0}, Lbsh/Parser;->InstanceOfExpression()V

    .line 1452
    :goto_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 1458
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x23

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v1, v2

    .line 1459
    goto :goto_2

    .line 1456
    :sswitch_0
    nop

    .line 1461
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_1
    sparse-switch v1, :sswitch_data_1

    .line 1469
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x24

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 1470
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1471
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 1466
    :sswitch_1
    const/16 v1, 0x5f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1467
    goto :goto_1

    .line 1463
    :sswitch_2
    const/16 v1, 0x5a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1464
    nop

    .line 1473
    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->InstanceOfExpression()V

    .line 1474
    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    .line 1475
    .local v1, "jjtn001":Lbsh/BSHBinaryExpression;
    const/4 v2, 0x1

    .line 1476
    .local v2, "jjtc001":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1477
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1479
    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1480
    const/4 v2, 0x0

    .line 1481
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1482
    iget v4, v0, Lbsh/Token;->kind:I

    iput v4, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1484
    if-eqz v2, :cond_2

    .line 1485
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1486
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1489
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :cond_2
    goto :goto_0

    .line 1484
    .restart local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .restart local v2    # "jjtc001":Z
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 1485
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1486
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_3
    throw v4

    .line 1490
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_2
        0x5f -> :sswitch_1
    .end sparse-switch
.end method

.method public final ExclusiveOrExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1370
    const/4 v0, 0x0

    .line 1371
    .local v0, "t":Lbsh/Token;
    invoke-virtual {p0}, Lbsh/Parser;->AndExpression()V

    .line 1374
    :goto_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1379
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x20

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v1, v2

    .line 1380
    goto :goto_1

    .line 1377
    :pswitch_0
    nop

    .line 1382
    const/16 v1, 0x6e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1383
    invoke-virtual {p0}, Lbsh/Parser;->AndExpression()V

    .line 1384
    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    .line 1385
    .local v1, "jjtn001":Lbsh/BSHBinaryExpression;
    const/4 v2, 0x1

    .line 1386
    .local v2, "jjtc001":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1387
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1389
    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1390
    const/4 v2, 0x0

    .line 1391
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1392
    iget v4, v0, Lbsh/Token;->kind:I

    iput v4, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1394
    if-eqz v2, :cond_1

    .line 1395
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1396
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1399
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :cond_1
    goto :goto_0

    .line 1394
    .restart local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .restart local v2    # "jjtc001":Z
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 1395
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1396
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v4

    .line 1400
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
    .end packed-switch
.end method

.method public final Expression()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1064
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {p0}, Lbsh/Parser;->Assignment()V

    goto :goto_0

    .line 1067
    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 1096
    iget-object v0, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x17

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v0, v2

    .line 1097
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1098
    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    .line 1093
    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ConditionalExpression()V

    .line 1094
    nop

    .line 1101
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ForInit()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 3308
    const/4 v0, 0x0

    .line 3309
    .local v0, "t":Lbsh/Token;
    const v1, 0x7fffffff

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_2_31(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3310
    invoke-virtual {p0}, Lbsh/Parser;->TypedVariableDeclaration()V

    goto :goto_0

    .line 3312
    :cond_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 3341
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x50

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 3342
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3343
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 3338
    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->StatementExpressionList()V

    .line 3339
    nop

    .line 3346
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ForStatement()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 3095
    new-instance v0, Lbsh/BSHForStatement;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Lbsh/BSHForStatement;-><init>(I)V

    .line 3096
    .local v0, "jjtn000":Lbsh/BSHForStatement;
    const/4 v1, 0x1

    .line 3097
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 3098
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v2, 0x0

    .line 3100
    .local v2, "t":Lbsh/Token;
    const/16 v3, 0x1e

    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3101
    const/16 v3, 0x48

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3102
    iget v3, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v3

    :cond_0
    sparse-switch v3, :sswitch_data_0

    .line 3143
    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_0

    .line 3139
    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ForInit()V

    .line 3140
    iput-boolean v4, v0, Lbsh/BSHForStatement;->hasForInit:Z

    .line 3141
    goto :goto_1

    .line 3143
    :goto_0
    const/16 v6, 0x4c

    iget v7, p0, Lbsh/Parser;->jj_gen:I

    aput v7, v3, v6

    .line 3146
    :goto_1
    const/16 v3, 0x4e

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3147
    iget v6, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v6, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v6

    :cond_1
    sparse-switch v6, :sswitch_data_1

    .line 3177
    iget-object v6, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_2

    .line 3173
    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 3174
    iput-boolean v4, v0, Lbsh/BSHForStatement;->hasExpression:Z

    .line 3175
    goto :goto_3

    .line 3177
    :goto_2
    const/16 v7, 0x4d

    iget v8, p0, Lbsh/Parser;->jj_gen:I

    aput v8, v6, v7

    .line 3180
    :goto_3
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3181
    iget v6, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v6, v5, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v6

    :cond_2
    sparse-switch v6, :sswitch_data_2

    .line 3211
    iget-object v5, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_4

    .line 3207
    :sswitch_2
    invoke-virtual {p0}, Lbsh/Parser;->ForUpdate()V

    .line 3208
    iput-boolean v4, v0, Lbsh/BSHForStatement;->hasForUpdate:Z

    .line 3209
    goto :goto_5

    .line 3211
    :goto_4
    iget v6, p0, Lbsh/Parser;->jj_gen:I

    aput v6, v5, v3

    .line 3214
    :goto_5
    const/16 v3, 0x49

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3215
    invoke-virtual {p0}, Lbsh/Parser;->Statement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3231
    if-eqz v1, :cond_3

    .line 3232
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3233
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3236
    :cond_3
    return-void

    .line 3216
    :catchall_0
    move-exception v3

    .line 3217
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_4

    .line 3218
    :try_start_1
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 3219
    const/4 v1, 0x0

    goto :goto_6

    .line 3221
    :cond_4
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 3223
    :goto_6
    instance-of v5, v3, Ljava/lang/RuntimeException;

    if-nez v5, :cond_6

    .line 3226
    instance-of v5, v3, Lbsh/ParseException;

    if-eqz v5, :cond_5

    .line 3227
    move-object v5, v3

    check-cast v5, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHForStatement;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v5

    .line 3229
    .restart local v0    # "jjtn000":Lbsh/BSHForStatement;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :cond_5
    move-object v5, v3

    check-cast v5, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHForStatement;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v5

    .line 3224
    .restart local v0    # "jjtn000":Lbsh/BSHForStatement;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :cond_6
    move-object v5, v3

    check-cast v5, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHForStatement;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3231
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHForStatement;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_7

    .line 3232
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3233
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_7
    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2f -> :sswitch_0
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3a -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xb -> :sswitch_1
        0xe -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1d -> :sswitch_1
        0x24 -> :sswitch_1
        0x26 -> :sswitch_1
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2f -> :sswitch_1
        0x37 -> :sswitch_1
        0x39 -> :sswitch_1
        0x3c -> :sswitch_1
        0x40 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_1
        0x45 -> :sswitch_1
        0x48 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0xb -> :sswitch_2
        0xe -> :sswitch_2
        0x11 -> :sswitch_2
        0x16 -> :sswitch_2
        0x1a -> :sswitch_2
        0x1d -> :sswitch_2
        0x24 -> :sswitch_2
        0x26 -> :sswitch_2
        0x28 -> :sswitch_2
        0x29 -> :sswitch_2
        0x2f -> :sswitch_2
        0x37 -> :sswitch_2
        0x39 -> :sswitch_2
        0x3c -> :sswitch_2
        0x40 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x45 -> :sswitch_2
        0x48 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
    .end sparse-switch
.end method

.method public final ForUpdate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 3447
    invoke-virtual {p0}, Lbsh/Parser;->StatementExpressionList()V

    .line 3448
    return-void
.end method

.method public final FormalComment()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2841
    new-instance v0, Lbsh/BSHFormalComment;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lbsh/BSHFormalComment;-><init>(I)V

    .line 2842
    .local v0, "jjtn000":Lbsh/BSHFormalComment;
    const/4 v1, 0x1

    .line 2843
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 2844
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 2846
    const/16 v2, 0x44

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v2

    .line 2847
    .local v2, "t":Lbsh/Token;
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    iget-boolean v4, p0, Lbsh/Parser;->retainComments:Z

    invoke-virtual {v3, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2848
    const/4 v1, 0x0

    .line 2849
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2850
    iget-object v3, v2, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v3, v0, Lbsh/BSHFormalComment;->text:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2852
    if-eqz v1, :cond_0

    .line 2853
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    iget-boolean v4, p0, Lbsh/Parser;->retainComments:Z

    invoke-virtual {v3, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2854
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2857
    :cond_0
    return-void

    .line 2852
    .end local v2    # "t":Lbsh/Token;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 2853
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    iget-boolean v4, p0, Lbsh/Parser;->retainComments:Z

    invoke-virtual {v3, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2854
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v2
.end method

.method public final FormalParameter()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 761
    new-instance v0, Lbsh/BSHFormalParameter;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lbsh/BSHFormalParameter;-><init>(I)V

    .line 762
    .local v0, "jjtn000":Lbsh/BSHFormalParameter;
    const/4 v1, 0x1

    .line 763
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 764
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 766
    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_2_5(I)Z

    move-result v2

    const/16 v4, 0x45

    if-eqz v2, :cond_0

    .line 767
    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    .line 768
    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v2

    .line 769
    .local v2, "t":Lbsh/Token;
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 770
    const/4 v1, 0x0

    .line 771
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 772
    iget-object v4, v2, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v4, v0, Lbsh/BSHFormalParameter;->name:Ljava/lang/String;

    goto :goto_0

    .line 774
    .end local v2    # "t":Lbsh/Token;
    :cond_0
    iget v2, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v2

    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 783
    iget-object v2, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_1

    .line 776
    :pswitch_0
    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v2

    .line 777
    .restart local v2    # "t":Lbsh/Token;
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 778
    const/4 v1, 0x0

    .line 779
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 780
    iget-object v4, v2, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v4, v0, Lbsh/BSHFormalParameter;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    nop

    .line 803
    :goto_0
    if-eqz v1, :cond_2

    .line 804
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 805
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 808
    :cond_2
    return-void

    .line 783
    .end local v2    # "t":Lbsh/Token;
    :goto_1
    const/16 v4, 0x12

    :try_start_1
    iget v6, p0, Lbsh/Parser;->jj_gen:I

    aput v6, v2, v4

    .line 784
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 785
    new-instance v2, Lbsh/ParseException;

    invoke-direct {v2}, Lbsh/ParseException;-><init>()V

    .end local v0    # "jjtn000":Lbsh/BSHFormalParameter;
    .end local v1    # "jjtc000":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    .restart local v0    # "jjtn000":Lbsh/BSHFormalParameter;
    .restart local v1    # "jjtc000":Z
    :catchall_0
    move-exception v2

    .line 789
    .local v2, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 790
    :try_start_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 791
    const/4 v1, 0x0

    goto :goto_2

    .line 793
    :cond_3
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 795
    :goto_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_5

    .line 798
    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_4

    .line 799
    move-object v4, v2

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHFormalParameter;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 801
    .restart local v0    # "jjtn000":Lbsh/BSHFormalParameter;
    .restart local v1    # "jjtc000":Z
    :cond_4
    move-object v4, v2

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHFormalParameter;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 796
    .restart local v0    # "jjtn000":Lbsh/BSHFormalParameter;
    .restart local v1    # "jjtc000":Z
    :cond_5
    move-object v4, v2

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHFormalParameter;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 803
    .end local v2    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHFormalParameter;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_6

    .line 804
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 805
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_6
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method public final FormalParameters()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 701
    new-instance v0, Lbsh/BSHFormalParameters;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lbsh/BSHFormalParameters;-><init>(I)V

    .line 702
    .local v0, "jjtn000":Lbsh/BSHFormalParameters;
    const/4 v1, 0x1

    .line 703
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 704
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 706
    const/16 v2, 0x48

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 707
    iget v2, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v2

    :cond_0
    sparse-switch v2, :sswitch_data_0

    .line 733
    iget-object v2, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_2

    .line 717
    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->FormalParameter()V

    .line 720
    :goto_0
    iget v2, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v2, v4, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v2

    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 725
    iget-object v2, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_1

    .line 723
    :pswitch_0
    nop

    .line 728
    const/16 v2, 0x4f

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 729
    invoke-virtual {p0}, Lbsh/Parser;->FormalParameter()V

    goto :goto_0

    .line 725
    :goto_1
    const/16 v4, 0x10

    iget v5, p0, Lbsh/Parser;->jj_gen:I

    aput v5, v2, v4

    .line 726
    goto :goto_3

    .line 733
    :goto_2
    const/16 v4, 0x11

    iget v5, p0, Lbsh/Parser;->jj_gen:I

    aput v5, v2, v4

    .line 736
    :goto_3
    const/16 v2, 0x49

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    if-eqz v1, :cond_2

    .line 753
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 754
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 757
    :cond_2
    return-void

    .line 737
    :catchall_0
    move-exception v2

    .line 738
    .local v2, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 739
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 740
    const/4 v1, 0x0

    goto :goto_4

    .line 742
    :cond_3
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 744
    :goto_4
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_5

    .line 747
    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_4

    .line 748
    move-object v4, v2

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHFormalParameters;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 750
    .restart local v0    # "jjtn000":Lbsh/BSHFormalParameters;
    .restart local v1    # "jjtc000":Z
    :cond_4
    move-object v4, v2

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHFormalParameters;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 745
    .restart local v0    # "jjtn000":Lbsh/BSHFormalParameters;
    .restart local v1    # "jjtc000":Z
    :cond_5
    move-object v4, v2

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHFormalParameters;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 752
    .end local v2    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHFormalParameters;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_6

    .line 753
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 754
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_6
    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2f -> :sswitch_0
        0x45 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public final IfStatement()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2974
    new-instance v0, Lbsh/BSHIfStatement;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lbsh/BSHIfStatement;-><init>(I)V

    .line 2975
    .local v0, "jjtn000":Lbsh/BSHIfStatement;
    const/4 v1, 0x1

    .line 2976
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 2977
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 2979
    const/16 v2, 0x20

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2980
    const/16 v2, 0x48

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2981
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 2982
    const/16 v2, 0x49

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2983
    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    .line 2984
    iget v2, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v2

    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 2990
    iget-object v2, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_0

    .line 2986
    :pswitch_0
    const/16 v2, 0x17

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2987
    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    .line 2988
    goto :goto_1

    .line 2990
    :goto_0
    const/16 v4, 0x4b

    iget v5, p0, Lbsh/Parser;->jj_gen:I

    aput v5, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3008
    :goto_1
    if-eqz v1, :cond_1

    .line 3009
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3010
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3013
    :cond_1
    return-void

    .line 2993
    :catchall_0
    move-exception v2

    .line 2994
    .local v2, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 2995
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 2996
    const/4 v1, 0x0

    goto :goto_2

    .line 2998
    :cond_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 3000
    :goto_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    .line 3003
    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_3

    .line 3004
    move-object v4, v2

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHIfStatement;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 3006
    .restart local v0    # "jjtn000":Lbsh/BSHIfStatement;
    .restart local v1    # "jjtc000":Z
    :cond_3
    move-object v4, v2

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHIfStatement;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 3001
    .restart local v0    # "jjtn000":Lbsh/BSHIfStatement;
    .restart local v1    # "jjtc000":Z
    :cond_4
    move-object v4, v2

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHIfStatement;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3008
    .end local v2    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHIfStatement;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_5

    .line 3009
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3010
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5
    throw v2

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public final ImportDeclaration()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 454
    new-instance v0, Lbsh/BSHImportDeclaration;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lbsh/BSHImportDeclaration;-><init>(I)V

    .line 455
    .local v0, "jjtn000":Lbsh/BSHImportDeclaration;
    const/4 v1, 0x1

    .line 456
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 457
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v2, 0x0

    .line 458
    .local v2, "s":Lbsh/Token;
    const/4 v3, 0x0

    .line 460
    .local v3, "t":Lbsh/Token;
    const/4 v4, 0x3

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, v4}, Lbsh/Parser;->jj_2_3(I)Z

    move-result v4

    const/16 v6, 0x4e

    const/16 v7, 0x68

    const/16 v8, 0x22

    const/4 v9, -0x1

    if-eqz v4, :cond_3

    .line 461
    invoke-direct {p0, v8}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 462
    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v4, v9, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v4

    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 467
    iget-object v4, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_0

    .line 464
    :pswitch_0
    const/16 v4, 0x30

    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v4

    move-object v2, v4

    .line 465
    goto :goto_1

    .line 467
    :goto_0
    const/16 v8, 0x9

    iget v10, p0, Lbsh/Parser;->jj_gen:I

    aput v10, v4, v8

    .line 470
    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    .line 471
    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v4, v9, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v4

    :cond_1
    packed-switch v4, :pswitch_data_1

    .line 477
    iget-object v4, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_2

    .line 473
    :pswitch_1
    const/16 v4, 0x50

    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v4

    move-object v3, v4

    .line 474
    invoke-direct {p0, v7}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 475
    goto :goto_3

    .line 477
    :goto_2
    const/16 v7, 0xa

    iget v8, p0, Lbsh/Parser;->jj_gen:I

    aput v8, v4, v7

    .line 480
    :goto_3
    invoke-direct {p0, v6}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 481
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 482
    const/4 v1, 0x0

    .line 483
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 484
    if-eqz v2, :cond_2

    iput-boolean v5, v0, Lbsh/BSHImportDeclaration;->staticImport:Z

    .line 485
    :cond_2
    if-eqz v3, :cond_5

    iput-boolean v5, v0, Lbsh/BSHImportDeclaration;->importPackage:Z

    goto :goto_4

    .line 487
    :cond_3
    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v4, v9, :cond_4

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v4

    :cond_4
    packed-switch v4, :pswitch_data_2

    .line 498
    iget-object v4, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_5

    .line 489
    :pswitch_2
    invoke-direct {p0, v8}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 490
    invoke-direct {p0, v7}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 491
    invoke-direct {p0, v6}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 492
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 493
    const/4 v1, 0x0

    .line 494
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 495
    iput-boolean v5, v0, Lbsh/BSHImportDeclaration;->superImport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    nop

    .line 518
    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    .line 519
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 520
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 523
    :cond_6
    return-void

    .line 498
    :goto_5
    const/16 v6, 0xb

    :try_start_1
    iget v7, p0, Lbsh/Parser;->jj_gen:I

    aput v7, v4, v6

    .line 499
    invoke-direct {p0, v9}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 500
    new-instance v4, Lbsh/ParseException;

    invoke-direct {v4}, Lbsh/ParseException;-><init>()V

    .end local v0    # "jjtn000":Lbsh/BSHImportDeclaration;
    .end local v1    # "jjtc000":Z
    .end local v2    # "s":Lbsh/Token;
    .end local v3    # "t":Lbsh/Token;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    .restart local v0    # "jjtn000":Lbsh/BSHImportDeclaration;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "s":Lbsh/Token;
    .restart local v3    # "t":Lbsh/Token;
    :catchall_0
    move-exception v4

    .line 504
    .local v4, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_7

    .line 505
    :try_start_2
    iget-object v6, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v6, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 506
    const/4 v1, 0x0

    goto :goto_6

    .line 508
    :cond_7
    iget-object v6, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v6}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 510
    :goto_6
    instance-of v6, v4, Ljava/lang/RuntimeException;

    if-nez v6, :cond_9

    .line 513
    instance-of v6, v4, Lbsh/ParseException;

    if-eqz v6, :cond_8

    .line 514
    move-object v6, v4

    check-cast v6, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHImportDeclaration;
    .end local v1    # "jjtc000":Z
    .end local v2    # "s":Lbsh/Token;
    .end local v3    # "t":Lbsh/Token;
    throw v6

    .line 516
    .restart local v0    # "jjtn000":Lbsh/BSHImportDeclaration;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "s":Lbsh/Token;
    .restart local v3    # "t":Lbsh/Token;
    :cond_8
    move-object v6, v4

    check-cast v6, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHImportDeclaration;
    .end local v1    # "jjtc000":Z
    .end local v2    # "s":Lbsh/Token;
    .end local v3    # "t":Lbsh/Token;
    throw v6

    .line 511
    .restart local v0    # "jjtn000":Lbsh/BSHImportDeclaration;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "s":Lbsh/Token;
    .restart local v3    # "t":Lbsh/Token;
    :cond_9
    move-object v6, v4

    check-cast v6, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHImportDeclaration;
    .end local v1    # "jjtc000":Z
    .end local v2    # "s":Lbsh/Token;
    .end local v3    # "t":Lbsh/Token;
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 518
    .end local v4    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHImportDeclaration;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "s":Lbsh/Token;
    .restart local v3    # "t":Lbsh/Token;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_a

    .line 519
    iget-object v6, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v6, v0, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 520
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_a
    throw v4

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_2
    .end packed-switch
.end method

.method public final InclusiveOrExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1325
    const/4 v0, 0x0

    .line 1326
    .local v0, "t":Lbsh/Token;
    invoke-virtual {p0}, Lbsh/Parser;->ExclusiveOrExpression()V

    .line 1329
    :goto_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1335
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x1e

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v1, v2

    .line 1336
    goto :goto_2

    .line 1333
    :pswitch_0
    nop

    .line 1338
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_1
    packed-switch v1, :pswitch_data_1

    .line 1346
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x1f

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 1347
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1348
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 1343
    :pswitch_1
    const/16 v1, 0x6d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1344
    goto :goto_1

    .line 1340
    :pswitch_2
    const/16 v1, 0x6c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1341
    nop

    .line 1350
    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->ExclusiveOrExpression()V

    .line 1351
    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    .line 1352
    .local v1, "jjtn001":Lbsh/BSHBinaryExpression;
    const/4 v2, 0x1

    .line 1353
    .local v2, "jjtc001":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1354
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1356
    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1357
    const/4 v2, 0x0

    .line 1358
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1359
    iget v4, v0, Lbsh/Token;->kind:I

    iput v4, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1361
    if-eqz v2, :cond_2

    .line 1362
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1363
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1366
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :cond_2
    goto :goto_0

    .line 1361
    .restart local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .restart local v2    # "jjtc001":Z
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 1362
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1363
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_3
    throw v4

    .line 1367
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6c
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6c
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final InstanceOfExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1493
    const/4 v0, 0x0

    .line 1494
    .local v0, "t":Lbsh/Token;
    invoke-virtual {p0}, Lbsh/Parser;->RelationalExpression()V

    .line 1495
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1516
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x25

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v1, v2

    goto :goto_0

    .line 1497
    :pswitch_0
    const/16 v1, 0x23

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1498
    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    .line 1499
    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    .line 1500
    .local v1, "jjtn001":Lbsh/BSHBinaryExpression;
    const/4 v2, 0x1

    .line 1501
    .local v2, "jjtc001":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1502
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1504
    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1505
    const/4 v2, 0x0

    .line 1506
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1507
    iget v4, v0, Lbsh/Token;->kind:I

    iput v4, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1509
    if-eqz v2, :cond_1

    .line 1510
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1511
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1514
    :cond_1
    goto :goto_0

    .line 1509
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 1510
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1511
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v4

    .line 1519
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method public final LabeledStatement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2751
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2752
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2753
    invoke-virtual {p0}, Lbsh/Parser;->Statement()V

    .line 2754
    return-void
.end method

.method public final Line()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 163
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 170
    iget-object v0, p0, Lbsh/Parser;->jj_la1:[I

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v0, v3

    .line 171
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_2_1(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lbsh/Parser;->BlockStatement()V

    .line 173
    return v3

    .line 165
    :pswitch_0
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 166
    const-string v0, "End of File!"

    invoke-static {v0}, Lbsh/Interpreter;->debug(Ljava/lang/String;)V

    .line 167
    return v2

    .line 175
    :cond_1
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 176
    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final Literal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2289
    new-instance v0, Lbsh/BSHLiteral;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lbsh/BSHLiteral;-><init>(I)V

    .line 2290
    .local v0, "jjtn000":Lbsh/BSHLiteral;
    const/4 v1, 0x1

    .line 2291
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 2292
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 2297
    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v3

    :cond_0
    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    .line 2385
    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    goto/16 :goto_4

    .line 2352
    :sswitch_0
    const/16 v3, 0x43

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v3

    .line 2353
    .local v3, "x":Lbsh/Token;
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2354
    const/4 v1, 0x0

    .line 2355
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2357
    :try_start_1
    iget-object v4, v3, Lbsh/Token;->image:Ljava/lang/String;

    iget-object v5, v3, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbsh/BSHLiteral;->stringSetup(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2360
    goto/16 :goto_3

    .line 2358
    :catch_0
    move-exception v4

    .line 2359
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbsh/Parser;->createParseException(Ljava/lang/String;)Lbsh/ParseException;

    move-result-object v5

    .end local v0    # "jjtn000":Lbsh/BSHLiteral;
    .end local v1    # "jjtc000":Z
    throw v5

    .line 2341
    .end local v3    # "x":Lbsh/Token;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "jjtn000":Lbsh/BSHLiteral;
    .restart local v1    # "jjtc000":Z
    :sswitch_1
    const/16 v3, 0x42

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v3

    .line 2342
    .restart local v3    # "x":Lbsh/Token;
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2343
    const/4 v1, 0x0

    .line 2344
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2346
    :try_start_3
    iget-object v4, v3, Lbsh/Token;->image:Ljava/lang/String;

    iget-object v5, v3, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbsh/BSHLiteral;->charSetup(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2349
    goto/16 :goto_3

    .line 2347
    :catch_1
    move-exception v4

    .line 2348
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error parsing character: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbsh/Parser;->createParseException(Ljava/lang/String;)Lbsh/ParseException;

    move-result-object v5

    .end local v0    # "jjtn000":Lbsh/BSHLiteral;
    .end local v1    # "jjtc000":Z
    throw v5

    .line 2321
    .end local v3    # "x":Lbsh/Token;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "jjtn000":Lbsh/BSHLiteral;
    .restart local v1    # "jjtc000":Z
    :sswitch_2
    const/16 v3, 0x40

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v3

    .line 2322
    .restart local v3    # "x":Lbsh/Token;
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2323
    const/4 v1, 0x0

    .line 2324
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2325
    iget-object v4, v3, Lbsh/Token;->image:Ljava/lang/String;

    .line 2326
    .local v4, "literal":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2327
    .local v6, "ch":C
    const/16 v7, 0x66

    if-eq v6, v7, :cond_4

    const/16 v7, 0x46

    if-ne v6, v7, :cond_1

    goto :goto_0

    .line 2334
    :cond_1
    const/16 v7, 0x64

    if-eq v6, v7, :cond_2

    const/16 v7, 0x44

    if-ne v6, v7, :cond_3

    .line 2335
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 2337
    :cond_3
    new-instance v5, Lbsh/Primitive;

    new-instance v7, Ljava/lang/Double;

    invoke-direct {v7, v4}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Lbsh/Primitive;-><init>(D)V

    iput-object v5, v0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    .line 2339
    goto/16 :goto_3

    .line 2329
    :cond_4
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 2330
    new-instance v5, Lbsh/Primitive;

    new-instance v7, Ljava/lang/Float;

    invoke-direct {v7, v4}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v5, v7}, Lbsh/Primitive;-><init>(F)V

    iput-object v5, v0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    goto/16 :goto_3

    .line 2299
    .end local v3    # "x":Lbsh/Token;
    .end local v4    # "literal":Ljava/lang/String;
    .end local v6    # "ch":C
    :sswitch_3
    const/16 v3, 0x3c

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v3

    .line 2300
    .restart local v3    # "x":Lbsh/Token;
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2301
    const/4 v1, 0x0

    .line 2302
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2303
    iget-object v4, v3, Lbsh/Token;->image:Ljava/lang/String;

    .line 2304
    .restart local v4    # "literal":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2305
    .restart local v6    # "ch":C
    const/16 v7, 0x6c

    if-eq v6, v7, :cond_6

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_5

    goto :goto_1

    .line 2313
    :cond_5
    :try_start_5
    new-instance v5, Lbsh/Primitive;

    .line 2314
    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v5, v7}, Lbsh/Primitive;-><init>(I)V

    iput-object v5, v0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2318
    goto :goto_3

    .line 2315
    :catch_2
    move-exception v5

    .line 2316
    .local v5, "e":Ljava/lang/NumberFormatException;
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error or number too big for integer type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lbsh/Parser;->createParseException(Ljava/lang/String;)Lbsh/ParseException;

    move-result-object v7

    .end local v0    # "jjtn000":Lbsh/BSHLiteral;
    .end local v1    # "jjtc000":Z
    throw v7

    .line 2307
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "jjtn000":Lbsh/BSHLiteral;
    .restart local v1    # "jjtc000":Z
    :cond_6
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 2308
    new-instance v5, Lbsh/Primitive;

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Lbsh/Primitive;-><init>(J)V

    iput-object v5, v0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    goto :goto_3

    .line 2378
    .end local v3    # "x":Lbsh/Token;
    .end local v4    # "literal":Ljava/lang/String;
    .end local v6    # "ch":C
    :sswitch_4
    invoke-virtual {p0}, Lbsh/Parser;->VoidLiteral()V

    .line 2379
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2380
    const/4 v1, 0x0

    .line 2381
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2382
    sget-object v3, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    iput-object v3, v0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    .line 2383
    goto :goto_3

    .line 2371
    :sswitch_5
    invoke-virtual {p0}, Lbsh/Parser;->NullLiteral()V

    .line 2372
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2373
    const/4 v1, 0x0

    .line 2374
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2375
    sget-object v3, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    iput-object v3, v0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    .line 2376
    goto :goto_3

    .line 2364
    :sswitch_6
    invoke-virtual {p0}, Lbsh/Parser;->BooleanLiteral()Z

    move-result v3

    .line 2365
    .local v3, "b":Z
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2366
    const/4 v1, 0x0

    .line 2367
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2368
    if-eqz v3, :cond_7

    sget-object v4, Lbsh/Primitive;->TRUE:Lbsh/Primitive;

    goto :goto_2

    :cond_7
    sget-object v4, Lbsh/Primitive;->FALSE:Lbsh/Primitive;

    :goto_2
    iput-object v4, v0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2369
    nop

    .line 2404
    .end local v3    # "b":Z
    :goto_3
    if-eqz v1, :cond_8

    .line 2405
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2406
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2409
    :cond_8
    return-void

    .line 2385
    :goto_4
    const/16 v5, 0x3d

    :try_start_7
    iget v6, p0, Lbsh/Parser;->jj_gen:I

    aput v6, v3, v5

    .line 2386
    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2387
    new-instance v3, Lbsh/ParseException;

    invoke-direct {v3}, Lbsh/ParseException;-><init>()V

    .end local v0    # "jjtn000":Lbsh/BSHLiteral;
    .end local v1    # "jjtc000":Z
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2389
    .restart local v0    # "jjtn000":Lbsh/BSHLiteral;
    .restart local v1    # "jjtc000":Z
    :catchall_0
    move-exception v3

    .line 2390
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_9

    .line 2391
    :try_start_8
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 2392
    const/4 v1, 0x0

    goto :goto_5

    .line 2394
    :cond_9
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 2396
    :goto_5
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_b

    .line 2399
    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_a

    .line 2400
    move-object v4, v3

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHLiteral;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2402
    .restart local v0    # "jjtn000":Lbsh/BSHLiteral;
    .restart local v1    # "jjtc000":Z
    :cond_a
    move-object v4, v3

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHLiteral;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2397
    .restart local v0    # "jjtn000":Lbsh/BSHLiteral;
    .restart local v1    # "jjtc000":Z
    :cond_b
    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHLiteral;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2404
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHLiteral;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_c

    .line 2405
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2406
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_c
    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_6
        0x29 -> :sswitch_5
        0x37 -> :sswitch_6
        0x39 -> :sswitch_4
        0x3c -> :sswitch_3
        0x40 -> :sswitch_2
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public final MethodDeclaration()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 341
    new-instance v0, Lbsh/BSHMethodDeclaration;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lbsh/BSHMethodDeclaration;-><init>(I)V

    .line 342
    .local v0, "jjtn000":Lbsh/BSHMethodDeclaration;
    const/4 v1, 0x1

    .line 343
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 344
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v2, 0x0

    .line 348
    .local v2, "t":Lbsh/Token;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4, v3}, Lbsh/Parser;->Modifiers(IZ)Lbsh/Modifiers;

    move-result-object v3

    .line 349
    .local v3, "mods":Lbsh/Modifiers;
    iput-object v3, v0, Lbsh/BSHMethodDeclaration;->modifiers:Lbsh/Modifiers;

    .line 350
    const v5, 0x7fffffff

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_2_2(I)Z

    move-result v5

    const/16 v6, 0x45

    const/4 v7, -0x1

    if-eqz v5, :cond_0

    .line 351
    invoke-direct {p0, v6}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v5

    move-object v2, v5

    .line 352
    iget-object v5, v2, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v5, v0, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    goto :goto_0

    .line 354
    :cond_0
    iget v5, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v5, v7, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v5

    :cond_1
    sparse-switch v5, :sswitch_data_0

    .line 370
    iget-object v5, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_5

    .line 365
    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ReturnType()V

    .line 366
    invoke-direct {p0, v6}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v5

    move-object v2, v5

    .line 367
    iget-object v5, v2, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v5, v0, Lbsh/BSHMethodDeclaration;->name:Ljava/lang/String;

    .line 368
    nop

    .line 375
    :goto_0
    invoke-virtual {p0}, Lbsh/Parser;->FormalParameters()V

    .line 376
    iget v5, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v5, v7, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v5

    :cond_2
    packed-switch v5, :pswitch_data_0

    .line 383
    iget-object v5, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_1

    .line 378
    :pswitch_0
    const/16 v5, 0x36

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 379
    invoke-virtual {p0}, Lbsh/Parser;->NameList()I

    move-result v5

    .line 380
    .local v5, "count":I
    iput v5, v0, Lbsh/BSHMethodDeclaration;->numThrows:I

    .line 381
    goto :goto_2

    .line 383
    .end local v5    # "count":I
    :goto_1
    const/4 v6, 0x7

    iget v8, p0, Lbsh/Parser;->jj_gen:I

    aput v8, v5, v6

    .line 386
    :goto_2
    iget v5, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v5, v7, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v5

    :cond_3
    sparse-switch v5, :sswitch_data_1

    .line 395
    iget-object v5, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_4

    .line 392
    :sswitch_1
    const/16 v5, 0x4e

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 393
    goto :goto_3

    .line 389
    :sswitch_2
    invoke-virtual {p0}, Lbsh/Parser;->Block()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    nop

    .line 414
    :goto_3
    if-eqz v1, :cond_4

    .line 415
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 416
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 419
    :cond_4
    return-void

    .line 395
    :goto_4
    const/16 v6, 0x8

    :try_start_1
    iget v8, p0, Lbsh/Parser;->jj_gen:I

    aput v8, v5, v6

    .line 396
    invoke-direct {p0, v7}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 397
    new-instance v5, Lbsh/ParseException;

    invoke-direct {v5}, Lbsh/ParseException;-><init>()V

    .end local v0    # "jjtn000":Lbsh/BSHMethodDeclaration;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v5

    .line 370
    .restart local v0    # "jjtn000":Lbsh/BSHMethodDeclaration;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :goto_5
    const/4 v6, 0x6

    iget v8, p0, Lbsh/Parser;->jj_gen:I

    aput v8, v5, v6

    .line 371
    invoke-direct {p0, v7}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 372
    new-instance v5, Lbsh/ParseException;

    invoke-direct {v5}, Lbsh/ParseException;-><init>()V

    .end local v0    # "jjtn000":Lbsh/BSHMethodDeclaration;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    .end local v3    # "mods":Lbsh/Modifiers;
    .restart local v0    # "jjtn000":Lbsh/BSHMethodDeclaration;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :catchall_0
    move-exception v3

    .line 400
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_5

    .line 401
    :try_start_2
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 402
    const/4 v1, 0x0

    goto :goto_6

    .line 404
    :cond_5
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 406
    :goto_6
    instance-of v5, v3, Ljava/lang/RuntimeException;

    if-nez v5, :cond_7

    .line 409
    instance-of v5, v3, Lbsh/ParseException;

    if-eqz v5, :cond_6

    .line 410
    move-object v5, v3

    check-cast v5, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHMethodDeclaration;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v5

    .line 412
    .restart local v0    # "jjtn000":Lbsh/BSHMethodDeclaration;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :cond_6
    move-object v5, v3

    check-cast v5, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHMethodDeclaration;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v5

    .line 407
    .restart local v0    # "jjtn000":Lbsh/BSHMethodDeclaration;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :cond_7
    move-object v5, v3

    check-cast v5, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHMethodDeclaration;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 414
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHMethodDeclaration;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_8

    .line 415
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 416
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_8
    throw v3

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2f -> :sswitch_0
        0x39 -> :sswitch_0
        0x45 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_2
        0x4a -> :sswitch_2
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method public final MethodInvocation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2139
    new-instance v0, Lbsh/BSHMethodInvocation;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lbsh/BSHMethodInvocation;-><init>(I)V

    .line 2140
    .local v0, "jjtn000":Lbsh/BSHMethodInvocation;
    const/4 v1, 0x1

    .line 2141
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 2142
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 2144
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    .line 2145
    invoke-virtual {p0}, Lbsh/Parser;->Arguments()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2161
    if-eqz v1, :cond_0

    .line 2162
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2163
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2166
    :cond_0
    return-void

    .line 2146
    :catchall_0
    move-exception v3

    .line 2147
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 2148
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 2149
    const/4 v1, 0x0

    goto :goto_0

    .line 2151
    :cond_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 2153
    :goto_0
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_3

    .line 2156
    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_2

    .line 2157
    move-object v4, v3

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHMethodInvocation;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2159
    .restart local v0    # "jjtn000":Lbsh/BSHMethodInvocation;
    .restart local v1    # "jjtc000":Z
    :cond_2
    move-object v4, v3

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHMethodInvocation;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2154
    .restart local v0    # "jjtn000":Lbsh/BSHMethodInvocation;
    .restart local v1    # "jjtc000":Z
    :cond_3
    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHMethodInvocation;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2161
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHMethodInvocation;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_4

    .line 2162
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2163
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_4
    throw v3
.end method

.method public final Modifiers(IZ)Lbsh/Modifiers;
    .locals 5
    .param p1, "context"    # I
    .param p2, "lookahead"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    .line 196
    .local v0, "mods":Lbsh/Modifiers;
    :cond_0
    :goto_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 211
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/4 v2, 0x1

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v1, v2

    .line 212
    goto/16 :goto_2

    .line 209
    :sswitch_0
    nop

    .line 214
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_2
    sparse-switch v1, :sswitch_data_1

    .line 249
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/4 v3, 0x2

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 250
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 251
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 237
    :sswitch_1
    const/16 v1, 0x3a

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 238
    goto :goto_1

    .line 234
    :sswitch_2
    const/16 v1, 0x34

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 235
    goto :goto_1

    .line 225
    :sswitch_3
    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 226
    goto :goto_1

    .line 246
    :sswitch_4
    const/16 v1, 0x31

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 247
    goto :goto_1

    .line 243
    :sswitch_5
    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 244
    goto :goto_1

    .line 222
    :sswitch_6
    const/16 v1, 0x2d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 223
    goto :goto_1

    .line 219
    :sswitch_7
    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 220
    goto :goto_1

    .line 216
    :sswitch_8
    const/16 v1, 0x2b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 217
    goto :goto_1

    .line 231
    :sswitch_9
    const/16 v1, 0x27

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 232
    goto :goto_1

    .line 228
    :sswitch_a
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 229
    goto :goto_1

    .line 240
    :sswitch_b
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 241
    nop

    .line 253
    :goto_1
    if-nez p2, :cond_0

    .line 255
    if-nez v0, :cond_3

    :try_start_0
    new-instance v1, Lbsh/Modifiers;

    invoke-direct {v1}, Lbsh/Modifiers;-><init>()V

    move-object v0, v1

    .line 256
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v1

    iget-object v1, v1, Lbsh/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lbsh/Modifiers;->addModifier(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    goto/16 :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbsh/Parser;->createParseException(Ljava/lang/String;)Lbsh/ParseException;

    move-result-object v2

    throw v2

    .line 261
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x1b -> :sswitch_0
        0x27 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x3a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_b
        0x1b -> :sswitch_a
        0x27 -> :sswitch_9
        0x2b -> :sswitch_8
        0x2c -> :sswitch_7
        0x2d -> :sswitch_6
        0x30 -> :sswitch_5
        0x31 -> :sswitch_4
        0x33 -> :sswitch_3
        0x34 -> :sswitch_2
        0x3a -> :sswitch_1
    .end sparse-switch
.end method

.method public final MultiplicativeExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1697
    const/4 v0, 0x0

    .line 1698
    .local v0, "t":Lbsh/Token;
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    .line 1701
    :goto_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 1708
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x2c

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v1, v2

    .line 1709
    goto :goto_2

    .line 1706
    :sswitch_0
    nop

    .line 1711
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_1
    sparse-switch v1, :sswitch_data_1

    .line 1722
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x2d

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 1723
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1724
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 1719
    :sswitch_1
    const/16 v1, 0x6f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1720
    goto :goto_1

    .line 1716
    :sswitch_2
    const/16 v1, 0x69

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1717
    goto :goto_1

    .line 1713
    :sswitch_3
    const/16 v1, 0x68

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1714
    nop

    .line 1726
    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    .line 1727
    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    .line 1728
    .local v1, "jjtn001":Lbsh/BSHBinaryExpression;
    const/4 v2, 0x1

    .line 1729
    .local v2, "jjtc001":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1730
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1732
    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1733
    const/4 v2, 0x0

    .line 1734
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1735
    iget v4, v0, Lbsh/Token;->kind:I

    iput v4, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1737
    if-eqz v2, :cond_2

    .line 1738
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1739
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1742
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :cond_2
    goto :goto_0

    .line 1737
    .restart local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .restart local v2    # "jjtc001":Z
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 1738
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1739
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_3
    throw v4

    .line 1743
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6f -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x68 -> :sswitch_3
        0x69 -> :sswitch_2
        0x6f -> :sswitch_1
    .end sparse-switch
.end method

.method public final NameList()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1039
    const/4 v0, 0x0

    .line 1040
    .local v0, "count":I
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    .line 1041
    add-int/lit8 v0, v0, 0x1

    .line 1044
    :goto_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1049
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x16

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v1, v2

    .line 1050
    goto :goto_1

    .line 1047
    :pswitch_0
    nop

    .line 1052
    const/16 v1, 0x4f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1053
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    .line 1054
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1056
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public final NullLiteral()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2430
    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2431
    return-void
.end method

.method public final PackageDeclaration()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 423
    new-instance v0, Lbsh/BSHPackageDeclaration;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lbsh/BSHPackageDeclaration;-><init>(I)V

    .line 424
    .local v0, "jjtn000":Lbsh/BSHPackageDeclaration;
    const/4 v1, 0x1

    .line 425
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 426
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 428
    const/16 v2, 0x2a

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 429
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    if-eqz v1, :cond_0

    .line 446
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 447
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 450
    :cond_0
    return-void

    .line 430
    :catchall_0
    move-exception v2

    .line 431
    .local v2, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 432
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 433
    const/4 v1, 0x0

    goto :goto_0

    .line 435
    :cond_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 437
    :goto_0
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_3

    .line 440
    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_2

    .line 441
    move-object v4, v2

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHPackageDeclaration;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 443
    .restart local v0    # "jjtn000":Lbsh/BSHPackageDeclaration;
    .restart local v1    # "jjtc000":Z
    :cond_2
    move-object v4, v2

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHPackageDeclaration;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 438
    .restart local v0    # "jjtn000":Lbsh/BSHPackageDeclaration;
    .restart local v1    # "jjtc000":Z
    :cond_3
    move-object v4, v2

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHPackageDeclaration;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 445
    .end local v2    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHPackageDeclaration;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    .line 446
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 447
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_4
    throw v2
.end method

.method public final PostfixExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1984
    const/4 v0, 0x0

    .line 1985
    .local v0, "t":Lbsh/Token;
    const v1, 0x7fffffff

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_2_12(I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    .line 1986
    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    .line 1987
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1995
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x35

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 1996
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1997
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 1992
    :pswitch_0
    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1993
    goto :goto_0

    .line 1989
    :pswitch_1
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1990
    nop

    .line 1999
    :goto_0
    new-instance v1, Lbsh/BSHUnaryExpression;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lbsh/BSHUnaryExpression;-><init>(I)V

    .line 2000
    .local v1, "jjtn001":Lbsh/BSHUnaryExpression;
    const/4 v2, 0x1

    .line 2001
    .local v2, "jjtc001":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 2002
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 2004
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 2005
    const/4 v2, 0x0

    .line 2006
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2007
    iget v4, v0, Lbsh/Token;->kind:I

    iput v4, v1, Lbsh/BSHUnaryExpression;->kind:I

    iput-boolean v3, v1, Lbsh/BSHUnaryExpression;->postfix:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2009
    if-eqz v2, :cond_1

    .line 2010
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 2011
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2014
    .end local v1    # "jjtn001":Lbsh/BSHUnaryExpression;
    .end local v2    # "jjtc001":Z
    :cond_1
    goto :goto_1

    .line 2009
    .restart local v1    # "jjtn001":Lbsh/BSHUnaryExpression;
    .restart local v2    # "jjtc001":Z
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 2010
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 2011
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v4

    .line 2015
    .end local v1    # "jjtn001":Lbsh/BSHUnaryExpression;
    .end local v2    # "jjtc001":Z
    :cond_3
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_4
    sparse-switch v1, :sswitch_data_0

    .line 2038
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x36

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 2039
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2040
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 2035
    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    .line 2036
    nop

    .line 2043
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method public final PreDecrementExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1837
    const/4 v0, 0x0

    .line 1838
    .local v0, "t":Lbsh/Token;
    const/16 v1, 0x65

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1839
    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    .line 1840
    new-instance v1, Lbsh/BSHUnaryExpression;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lbsh/BSHUnaryExpression;-><init>(I)V

    .line 1841
    .local v1, "jjtn001":Lbsh/BSHUnaryExpression;
    const/4 v2, 0x1

    .line 1842
    .local v2, "jjtc001":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1843
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1845
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1846
    const/4 v2, 0x0

    .line 1847
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1848
    iget v4, v0, Lbsh/Token;->kind:I

    iput v4, v1, Lbsh/BSHUnaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1850
    if-eqz v2, :cond_0

    .line 1851
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1852
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1855
    :cond_0
    return-void

    .line 1850
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 1851
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1852
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v4
.end method

.method public final PreIncrementExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1816
    const/4 v0, 0x0

    .line 1817
    .local v0, "t":Lbsh/Token;
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1818
    invoke-virtual {p0}, Lbsh/Parser;->PrimaryExpression()V

    .line 1819
    new-instance v1, Lbsh/BSHUnaryExpression;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lbsh/BSHUnaryExpression;-><init>(I)V

    .line 1820
    .local v1, "jjtn001":Lbsh/BSHUnaryExpression;
    const/4 v2, 0x1

    .line 1821
    .local v2, "jjtc001":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1822
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1824
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1825
    const/4 v2, 0x0

    .line 1826
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1827
    iget v4, v0, Lbsh/Token;->kind:I

    iput v4, v1, Lbsh/BSHUnaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1829
    if-eqz v2, :cond_0

    .line 1830
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1831
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1834
    :cond_0
    return-void

    .line 1829
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_1

    .line 1830
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1831
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_1
    throw v4
.end method

.method public final PrimaryExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2095
    new-instance v0, Lbsh/BSHPrimaryExpression;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lbsh/BSHPrimaryExpression;-><init>(I)V

    .line 2096
    .local v0, "jjtn000":Lbsh/BSHPrimaryExpression;
    const/4 v1, 0x1

    .line 2097
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 2098
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 2100
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lbsh/Parser;->PrimaryPrefix()V

    .line 2103
    :goto_0
    iget v3, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v3

    :cond_0
    sparse-switch v3, :sswitch_data_0

    .line 2110
    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_1

    .line 2108
    :sswitch_0
    nop

    .line 2113
    invoke-virtual {p0}, Lbsh/Parser;->PrimarySuffix()V

    goto :goto_0

    .line 2110
    :goto_1
    const/16 v4, 0x38

    iget v5, p0, Lbsh/Parser;->jj_gen:I

    aput v5, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2111
    nop

    .line 2130
    if-eqz v1, :cond_1

    .line 2131
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2132
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2135
    :cond_1
    return-void

    .line 2115
    :catchall_0
    move-exception v3

    .line 2116
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 2117
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 2118
    const/4 v1, 0x0

    goto :goto_2

    .line 2120
    :cond_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 2122
    :goto_2
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    .line 2125
    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_3

    .line 2126
    move-object v4, v3

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHPrimaryExpression;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2128
    .restart local v0    # "jjtn000":Lbsh/BSHPrimaryExpression;
    .restart local v1    # "jjtc000":Z
    :cond_3
    move-object v4, v3

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHPrimaryExpression;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2123
    .restart local v0    # "jjtn000":Lbsh/BSHPrimaryExpression;
    .restart local v1    # "jjtc000":Z
    :cond_4
    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHPrimaryExpression;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2130
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHPrimaryExpression;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_5

    .line 2131
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2132
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5
    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x4a -> :sswitch_0
        0x4c -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public final PrimaryPrefix()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2169
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 2189
    iget-object v0, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x39

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v0, v2

    .line 2190
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_14(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2191
    invoke-virtual {p0}, Lbsh/Parser;->MethodInvocation()V

    goto :goto_0

    .line 2181
    :sswitch_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2182
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 2183
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2184
    goto :goto_0

    .line 2186
    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->AllocationExpression()V

    .line 2187
    goto :goto_0

    .line 2178
    :sswitch_2
    invoke-virtual {p0}, Lbsh/Parser;->Literal()V

    .line 2179
    goto :goto_0

    .line 2192
    :cond_1
    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_15(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2193
    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    goto :goto_0

    .line 2195
    :cond_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 2200
    iget-object v0, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x3a

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v0, v2

    .line 2201
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2202
    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    .line 2197
    :pswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    .line 2198
    nop

    .line 2206
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_2
        0x28 -> :sswitch_1
        0x29 -> :sswitch_2
        0x37 -> :sswitch_2
        0x39 -> :sswitch_2
        0x3c -> :sswitch_2
        0x40 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x48 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method public final PrimarySuffix()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2210
    new-instance v0, Lbsh/BSHPrimarySuffix;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lbsh/BSHPrimarySuffix;-><init>(I)V

    .line 2211
    .local v0, "jjtn000":Lbsh/BSHPrimarySuffix;
    const/4 v1, 0x1

    .line 2212
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 2213
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v2, 0x0

    .line 2215
    .local v2, "t":Lbsh/Token;
    const/4 v3, 0x2

    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_2_16(I)Z

    move-result v5

    const/16 v6, 0x50

    if-eqz v5, :cond_0

    .line 2216
    invoke-direct {p0, v6}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2217
    const/16 v3, 0xd

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2218
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2219
    const/4 v1, 0x0

    .line 2220
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2221
    const/4 v3, 0x0

    iput v3, v0, Lbsh/BSHPrimarySuffix;->operation:I

    goto/16 :goto_2

    .line 2223
    :cond_0
    iget v5, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v5

    :cond_1
    sparse-switch v5, :sswitch_data_0

    .line 2260
    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_3

    .line 2234
    :sswitch_0
    invoke-direct {p0, v6}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2235
    const/16 v5, 0x45

    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v5

    move-object v2, v5

    .line 2236
    iget v5, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v5, v7, :cond_2

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v5

    :cond_2
    packed-switch v5, :pswitch_data_0

    .line 2241
    iget-object v5, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_0

    .line 2238
    :pswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->Arguments()V

    .line 2239
    goto :goto_1

    .line 2241
    :goto_0
    const/16 v6, 0x3b

    iget v7, p0, Lbsh/Parser;->jj_gen:I

    aput v7, v5, v6

    .line 2244
    :goto_1
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2245
    const/4 v1, 0x0

    .line 2246
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2247
    iput v3, v0, Lbsh/BSHPrimarySuffix;->operation:I

    .line 2248
    iget-object v3, v2, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v3, v0, Lbsh/BSHPrimarySuffix;->field:Ljava/lang/String;

    .line 2249
    goto :goto_2

    .line 2225
    :sswitch_1
    const/16 v3, 0x4c

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2226
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 2227
    const/16 v3, 0x4d

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2228
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2229
    const/4 v1, 0x0

    .line 2230
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2231
    iput v4, v0, Lbsh/BSHPrimarySuffix;->operation:I

    .line 2232
    goto :goto_2

    .line 2251
    :sswitch_2
    const/16 v3, 0x4a

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2252
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 2253
    const/16 v3, 0x4b

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2254
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2255
    const/4 v1, 0x0

    .line 2256
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2257
    const/4 v3, 0x3

    iput v3, v0, Lbsh/BSHPrimarySuffix;->operation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2258
    nop

    .line 2280
    :goto_2
    if-eqz v1, :cond_3

    .line 2281
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2282
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2285
    :cond_3
    return-void

    .line 2260
    :goto_3
    const/16 v5, 0x3c

    :try_start_1
    iget v6, p0, Lbsh/Parser;->jj_gen:I

    aput v6, v3, v5

    .line 2261
    invoke-direct {p0, v7}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2262
    new-instance v3, Lbsh/ParseException;

    invoke-direct {v3}, Lbsh/ParseException;-><init>()V

    .end local v0    # "jjtn000":Lbsh/BSHPrimarySuffix;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2265
    .restart local v0    # "jjtn000":Lbsh/BSHPrimarySuffix;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :catchall_0
    move-exception v3

    .line 2266
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_4

    .line 2267
    :try_start_2
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 2268
    const/4 v1, 0x0

    goto :goto_4

    .line 2270
    :cond_4
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 2272
    :goto_4
    instance-of v5, v3, Ljava/lang/RuntimeException;

    if-nez v5, :cond_6

    .line 2275
    instance-of v5, v3, Lbsh/ParseException;

    if-eqz v5, :cond_5

    .line 2276
    move-object v5, v3

    check-cast v5, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHPrimarySuffix;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v5

    .line 2278
    .restart local v0    # "jjtn000":Lbsh/BSHPrimarySuffix;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :cond_5
    move-object v5, v3

    check-cast v5, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHPrimarySuffix;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v5

    .line 2273
    .restart local v0    # "jjtn000":Lbsh/BSHPrimarySuffix;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :cond_6
    move-object v5, v3

    check-cast v5, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHPrimarySuffix;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2280
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHPrimarySuffix;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_7

    .line 2281
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2282
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_7
    throw v3

    :sswitch_data_0
    .sparse-switch
        0x4a -> :sswitch_2
        0x4c -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method

.method public final PrimitiveType()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 930
    new-instance v0, Lbsh/BSHPrimitiveType;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lbsh/BSHPrimitiveType;-><init>(I)V

    .line 931
    .local v0, "jjtn000":Lbsh/BSHPrimitiveType;
    const/4 v2, 0x1

    .line 932
    .local v2, "jjtc000":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 933
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 935
    const/4 v3, 0x1

    :try_start_0
    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v4

    :cond_0
    sparse-switch v4, :sswitch_data_0

    .line 993
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    goto/16 :goto_1

    .line 958
    :sswitch_0
    const/16 v1, 0x2f

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 959
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 960
    const/4 v2, 0x0

    .line 961
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 962
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    iput-object v1, v0, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;

    .line 963
    goto/16 :goto_0

    .line 972
    :sswitch_1
    const/16 v1, 0x26

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 973
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 974
    const/4 v2, 0x0

    .line 975
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 976
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    iput-object v1, v0, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;

    .line 977
    goto :goto_0

    .line 965
    :sswitch_2
    const/16 v1, 0x24

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 966
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 967
    const/4 v2, 0x0

    .line 968
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 969
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v1, v0, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;

    .line 970
    goto :goto_0

    .line 979
    :sswitch_3
    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 980
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 981
    const/4 v2, 0x0

    .line 982
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 983
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v1, v0, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;

    .line 984
    goto :goto_0

    .line 986
    :sswitch_4
    const/16 v1, 0x16

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 987
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 988
    const/4 v2, 0x0

    .line 989
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 990
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    iput-object v1, v0, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;

    .line 991
    goto :goto_0

    .line 944
    :sswitch_5
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 945
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 946
    const/4 v2, 0x0

    .line 947
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 948
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    iput-object v1, v0, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;

    .line 949
    goto :goto_0

    .line 951
    :sswitch_6
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 952
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 953
    const/4 v2, 0x0

    .line 954
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 955
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    iput-object v1, v0, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;

    .line 956
    goto :goto_0

    .line 937
    :sswitch_7
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 938
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 939
    const/4 v2, 0x0

    .line 940
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 941
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    iput-object v1, v0, Lbsh/BSHPrimitiveType;->type:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    nop

    .line 998
    :goto_0
    if-eqz v2, :cond_1

    .line 999
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 1000
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1003
    :cond_1
    return-void

    .line 993
    :goto_1
    const/16 v4, 0x15

    :try_start_1
    iget v6, p0, Lbsh/Parser;->jj_gen:I

    aput v6, v1, v4

    .line 994
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 995
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    .end local v0    # "jjtn000":Lbsh/BSHPrimitiveType;
    .end local v2    # "jjtc000":Z
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 998
    .restart local v0    # "jjtn000":Lbsh/BSHPrimitiveType;
    .restart local v2    # "jjtc000":Z
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_2

    .line 999
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 1000
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_2
    throw v1

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_7
        0xe -> :sswitch_6
        0x11 -> :sswitch_5
        0x16 -> :sswitch_4
        0x1d -> :sswitch_3
        0x24 -> :sswitch_2
        0x26 -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method public ReInit(Lbsh/ParserTokenManager;)V
    .locals 3
    .param p1, "tm"    # Lbsh/ParserTokenManager;

    .line 5947
    iput-object p1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    .line 5948
    new-instance v0, Lbsh/Token;

    invoke-direct {v0}, Lbsh/Token;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    .line 5949
    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    .line 5950
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1}, Lbsh/JJTParserState;->reset()V

    .line 5951
    const/4 v1, 0x0

    iput v1, p0, Lbsh/Parser;->jj_gen:I

    .line 5952
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x58

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lbsh/Parser;->jj_la1:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5953
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lbsh/Parser;->jj_2_rtns:[Lbsh/Parser$JJCalls;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    new-instance v2, Lbsh/Parser$JJCalls;

    invoke-direct {v2}, Lbsh/Parser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5954
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 5906
    iget-object v0, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lbsh/JavaCharStream;->ReInit(Ljava/io/InputStream;II)V

    .line 5907
    iget-object v0, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    iget-object v1, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0, v1}, Lbsh/ParserTokenManager;->ReInit(Lbsh/JavaCharStream;)V

    .line 5908
    new-instance v0, Lbsh/Token;

    invoke-direct {v0}, Lbsh/Token;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    .line 5909
    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    .line 5910
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1}, Lbsh/JJTParserState;->reset()V

    .line 5911
    const/4 v1, 0x0

    iput v1, p0, Lbsh/Parser;->jj_gen:I

    .line 5912
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x58

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lbsh/Parser;->jj_la1:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5913
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lbsh/Parser;->jj_2_rtns:[Lbsh/Parser$JJCalls;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    new-instance v2, Lbsh/Parser$JJCalls;

    invoke-direct {v2}, Lbsh/Parser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5914
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/Reader;

    .line 5927
    iget-object v0, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 5928
    iget-object v0, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    iget-object v1, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0, v1}, Lbsh/ParserTokenManager;->ReInit(Lbsh/JavaCharStream;)V

    .line 5929
    new-instance v0, Lbsh/Token;

    invoke-direct {v0}, Lbsh/Token;-><init>()V

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    .line 5930
    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    .line 5931
    iget-object v1, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v1}, Lbsh/JJTParserState;->reset()V

    .line 5932
    const/4 v1, 0x0

    iput v1, p0, Lbsh/Parser;->jj_gen:I

    .line 5933
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x58

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lbsh/Parser;->jj_la1:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5934
    .end local v1    # "i":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lbsh/Parser;->jj_2_rtns:[Lbsh/Parser$JJCalls;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    new-instance v2, Lbsh/Parser$JJCalls;

    invoke-direct {v2}, Lbsh/Parser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5935
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final RelationalExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1522
    const/4 v0, 0x0

    .line 1523
    .local v0, "t":Lbsh/Token;
    invoke-virtual {p0}, Lbsh/Parser;->ShiftExpression()V

    .line 1526
    :goto_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1538
    :pswitch_0
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x26

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v1, v2

    .line 1539
    goto/16 :goto_2

    .line 1536
    :pswitch_1
    nop

    .line 1541
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_1
    packed-switch v1, :pswitch_data_1

    .line 1567
    :pswitch_2
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x27

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 1568
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1569
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 1564
    :pswitch_3
    const/16 v1, 0x5e

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1565
    goto :goto_1

    .line 1561
    :pswitch_4
    const/16 v1, 0x5d

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1562
    goto :goto_1

    .line 1558
    :pswitch_5
    const/16 v1, 0x5c

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1559
    goto :goto_1

    .line 1555
    :pswitch_6
    const/16 v1, 0x5b

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1556
    goto :goto_1

    .line 1546
    :pswitch_7
    const/16 v1, 0x55

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1547
    goto :goto_1

    .line 1543
    :pswitch_8
    const/16 v1, 0x54

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1544
    goto :goto_1

    .line 1552
    :pswitch_9
    const/16 v1, 0x53

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1553
    goto :goto_1

    .line 1549
    :pswitch_a
    const/16 v1, 0x52

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1550
    nop

    .line 1571
    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->ShiftExpression()V

    .line 1572
    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    .line 1573
    .local v1, "jjtn001":Lbsh/BSHBinaryExpression;
    const/4 v2, 0x1

    .line 1574
    .local v2, "jjtc001":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1575
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1577
    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1578
    const/4 v2, 0x0

    .line 1579
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1580
    iget v4, v0, Lbsh/Token;->kind:I

    iput v4, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1582
    if-eqz v2, :cond_2

    .line 1583
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1584
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1587
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :cond_2
    goto/16 :goto_0

    .line 1582
    .restart local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .restart local v2    # "jjtc001":Z
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 1583
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1584
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_3
    throw v4

    .line 1588
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final ReturnStatement()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 3510
    new-instance v0, Lbsh/BSHReturnStatement;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Lbsh/BSHReturnStatement;-><init>(I)V

    .line 3511
    .local v0, "jjtn000":Lbsh/BSHReturnStatement;
    const/4 v1, 0x1

    .line 3512
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 3513
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 3515
    const/16 v2, 0x2e

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3516
    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v4

    :cond_0
    sparse-switch v4, :sswitch_data_0

    .line 3545
    iget-object v4, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_0

    .line 3542
    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 3543
    goto :goto_1

    .line 3545
    :goto_0
    const/16 v5, 0x55

    iget v6, p0, Lbsh/Parser;->jj_gen:I

    aput v6, v4, v5

    .line 3548
    :goto_1
    const/16 v4, 0x4e

    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3549
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3550
    const/4 v1, 0x0

    .line 3551
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3552
    iput v2, v0, Lbsh/BSHReturnStatement;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3568
    if-eqz v1, :cond_1

    .line 3569
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3570
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3573
    :cond_1
    return-void

    .line 3553
    :catchall_0
    move-exception v2

    .line 3554
    .local v2, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 3555
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 3556
    const/4 v1, 0x0

    goto :goto_2

    .line 3558
    :cond_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 3560
    :goto_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    .line 3563
    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_3

    .line 3564
    move-object v4, v2

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHReturnStatement;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 3566
    .restart local v0    # "jjtn000":Lbsh/BSHReturnStatement;
    .restart local v1    # "jjtc000":Z
    :cond_3
    move-object v4, v2

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHReturnStatement;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 3561
    .restart local v0    # "jjtn000":Lbsh/BSHReturnStatement;
    .restart local v1    # "jjtc000":Z
    :cond_4
    move-object v4, v2

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHReturnStatement;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3568
    .end local v2    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHReturnStatement;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_5

    .line 3569
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3570
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5
    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ReturnType()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 877
    new-instance v0, Lbsh/BSHReturnType;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lbsh/BSHReturnType;-><init>(I)V

    .line 878
    .local v0, "jjtn000":Lbsh/BSHReturnType;
    const/4 v1, 0x1

    .line 879
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 880
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 882
    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v3

    :cond_0
    sparse-switch v3, :sswitch_data_0

    .line 902
    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_1

    .line 884
    :sswitch_0
    const/16 v3, 0x39

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 885
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 886
    const/4 v1, 0x0

    .line 887
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 888
    iput-boolean v2, v0, Lbsh/BSHReturnType;->isVoid:Z

    .line 889
    goto :goto_0

    .line 899
    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->Type()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    nop

    .line 921
    :goto_0
    if-eqz v1, :cond_1

    .line 922
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 923
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 926
    :cond_1
    return-void

    .line 902
    :goto_1
    const/16 v5, 0x14

    :try_start_1
    iget v6, p0, Lbsh/Parser;->jj_gen:I

    aput v6, v3, v5

    .line 903
    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 904
    new-instance v3, Lbsh/ParseException;

    invoke-direct {v3}, Lbsh/ParseException;-><init>()V

    .end local v0    # "jjtn000":Lbsh/BSHReturnType;
    .end local v1    # "jjtc000":Z
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 906
    .restart local v0    # "jjtn000":Lbsh/BSHReturnType;
    .restart local v1    # "jjtc000":Z
    :catchall_0
    move-exception v3

    .line 907
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 908
    :try_start_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 909
    const/4 v1, 0x0

    goto :goto_2

    .line 911
    :cond_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 913
    :goto_2
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    .line 916
    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_3

    .line 917
    move-object v4, v3

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHReturnType;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 919
    .restart local v0    # "jjtn000":Lbsh/BSHReturnType;
    .restart local v1    # "jjtc000":Z
    :cond_3
    move-object v4, v3

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHReturnType;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 914
    .restart local v0    # "jjtn000":Lbsh/BSHReturnType;
    .restart local v1    # "jjtc000":Z
    :cond_4
    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHReturnType;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 921
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHReturnType;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_5

    .line 922
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 923
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5
    throw v3

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0xe -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
        0x1d -> :sswitch_1
        0x24 -> :sswitch_1
        0x26 -> :sswitch_1
        0x2f -> :sswitch_1
        0x39 -> :sswitch_0
        0x45 -> :sswitch_1
    .end sparse-switch
.end method

.method public final ShiftExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1591
    const/4 v0, 0x0

    .line 1592
    .local v0, "t":Lbsh/Token;
    invoke-virtual {p0}, Lbsh/Parser;->AdditiveExpression()V

    .line 1595
    :goto_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1605
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x28

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v1, v2

    .line 1606
    goto/16 :goto_2

    .line 1603
    :pswitch_0
    nop

    .line 1608
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_1
    packed-switch v1, :pswitch_data_1

    .line 1628
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x29

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 1629
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1630
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 1625
    :pswitch_1
    const/16 v1, 0x75

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1626
    goto :goto_1

    .line 1622
    :pswitch_2
    const/16 v1, 0x74

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1623
    goto :goto_1

    .line 1619
    :pswitch_3
    const/16 v1, 0x73

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1620
    goto :goto_1

    .line 1616
    :pswitch_4
    const/16 v1, 0x72

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1617
    goto :goto_1

    .line 1613
    :pswitch_5
    const/16 v1, 0x71

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1614
    goto :goto_1

    .line 1610
    :pswitch_6
    const/16 v1, 0x70

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1611
    nop

    .line 1632
    :goto_1
    invoke-virtual {p0}, Lbsh/Parser;->AdditiveExpression()V

    .line 1633
    new-instance v1, Lbsh/BSHBinaryExpression;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lbsh/BSHBinaryExpression;-><init>(I)V

    .line 1634
    .local v1, "jjtn001":Lbsh/BSHBinaryExpression;
    const/4 v2, 0x1

    .line 1635
    .local v2, "jjtc001":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1636
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1638
    const/4 v3, 0x2

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1639
    const/4 v2, 0x0

    .line 1640
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1641
    iget v4, v0, Lbsh/Token;->kind:I

    iput v4, v1, Lbsh/BSHBinaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1643
    if-eqz v2, :cond_2

    .line 1644
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1645
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1648
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :cond_2
    goto/16 :goto_0

    .line 1643
    .restart local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .restart local v2    # "jjtc001":Z
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 1644
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1645
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_3
    throw v4

    .line 1649
    .end local v1    # "jjtn001":Lbsh/BSHBinaryExpression;
    .end local v2    # "jjtc001":Z
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x70
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final Statement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2662
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_2_22(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2663
    invoke-virtual {p0}, Lbsh/Parser;->LabeledStatement()V

    goto/16 :goto_0

    .line 2665
    :cond_0
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 2714
    iget-object v0, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x45

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v0, v2

    .line 2715
    invoke-virtual {p0}, Lbsh/Parser;->isRegularForStatement()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2716
    invoke-virtual {p0}, Lbsh/Parser;->ForStatement()V

    goto :goto_0

    .line 2671
    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->EmptyStatement()V

    .line 2672
    goto :goto_0

    .line 2708
    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->WhileStatement()V

    .line 2709
    goto :goto_0

    .line 2702
    :sswitch_2
    invoke-virtual {p0}, Lbsh/Parser;->SwitchStatement()V

    .line 2703
    goto :goto_0

    .line 2668
    :sswitch_3
    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    .line 2669
    goto :goto_0

    .line 2705
    :sswitch_4
    invoke-virtual {p0}, Lbsh/Parser;->IfStatement()V

    .line 2706
    goto :goto_0

    .line 2711
    :sswitch_5
    invoke-virtual {p0}, Lbsh/Parser;->DoStatement()V

    .line 2712
    goto :goto_0

    .line 2698
    :sswitch_6
    invoke-virtual {p0}, Lbsh/Parser;->StatementExpression()V

    .line 2699
    const/16 v0, 0x4e

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2700
    goto :goto_0

    .line 2718
    :cond_2
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :cond_3
    sparse-switch v0, :sswitch_data_1

    .line 2741
    iget-object v0, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0x46

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v0, v2

    .line 2742
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2743
    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    .line 2738
    :sswitch_7
    invoke-virtual {p0}, Lbsh/Parser;->TryStatement()V

    .line 2739
    goto :goto_0

    .line 2735
    :sswitch_8
    invoke-virtual {p0}, Lbsh/Parser;->ThrowStatement()V

    .line 2736
    goto :goto_0

    .line 2732
    :sswitch_9
    invoke-virtual {p0}, Lbsh/Parser;->SynchronizedStatement()V

    .line 2733
    goto :goto_0

    .line 2729
    :sswitch_a
    invoke-virtual {p0}, Lbsh/Parser;->ReturnStatement()V

    .line 2730
    goto :goto_0

    .line 2720
    :sswitch_b
    invoke-virtual {p0}, Lbsh/Parser;->EnhancedForStatement()V

    .line 2721
    goto :goto_0

    .line 2726
    :sswitch_c
    invoke-virtual {p0}, Lbsh/Parser;->ContinueStatement()V

    .line 2727
    goto :goto_0

    .line 2723
    :sswitch_d
    invoke-virtual {p0}, Lbsh/Parser;->BreakStatement()V

    .line 2724
    nop

    .line 2748
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_6
        0xe -> :sswitch_6
        0x11 -> :sswitch_6
        0x15 -> :sswitch_5
        0x16 -> :sswitch_6
        0x1a -> :sswitch_6
        0x1d -> :sswitch_6
        0x20 -> :sswitch_4
        0x24 -> :sswitch_6
        0x26 -> :sswitch_6
        0x28 -> :sswitch_6
        0x29 -> :sswitch_6
        0x2f -> :sswitch_6
        0x30 -> :sswitch_3
        0x32 -> :sswitch_2
        0x37 -> :sswitch_6
        0x39 -> :sswitch_6
        0x3b -> :sswitch_1
        0x3c -> :sswitch_6
        0x40 -> :sswitch_6
        0x42 -> :sswitch_6
        0x43 -> :sswitch_6
        0x45 -> :sswitch_6
        0x48 -> :sswitch_6
        0x4a -> :sswitch_3
        0x4e -> :sswitch_0
        0x56 -> :sswitch_6
        0x57 -> :sswitch_6
        0x64 -> :sswitch_6
        0x65 -> :sswitch_6
        0x66 -> :sswitch_6
        0x67 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xc -> :sswitch_d
        0x13 -> :sswitch_c
        0x1e -> :sswitch_b
        0x2e -> :sswitch_a
        0x33 -> :sswitch_9
        0x35 -> :sswitch_8
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public final StatementExpression()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2864
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 2865
    return-void
.end method

.method public final StatementExpressionList()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 3405
    new-instance v0, Lbsh/BSHStatementExpressionList;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lbsh/BSHStatementExpressionList;-><init>(I)V

    .line 3406
    .local v0, "jjtn000":Lbsh/BSHStatementExpressionList;
    const/4 v1, 0x1

    .line 3407
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 3408
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 3410
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lbsh/Parser;->StatementExpression()V

    .line 3413
    :goto_0
    iget v3, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v3

    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 3418
    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_1

    .line 3416
    :pswitch_0
    nop

    .line 3421
    const/16 v3, 0x4f

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3422
    invoke-virtual {p0}, Lbsh/Parser;->StatementExpression()V

    goto :goto_0

    .line 3418
    :goto_1
    const/16 v4, 0x52

    iget v5, p0, Lbsh/Parser;->jj_gen:I

    aput v5, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3419
    nop

    .line 3439
    if-eqz v1, :cond_1

    .line 3440
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3441
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3444
    :cond_1
    return-void

    .line 3424
    :catchall_0
    move-exception v3

    .line 3425
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 3426
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 3427
    const/4 v1, 0x0

    goto :goto_2

    .line 3429
    :cond_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 3431
    :goto_2
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    .line 3434
    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_3

    .line 3435
    move-object v4, v3

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHStatementExpressionList;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 3437
    .restart local v0    # "jjtn000":Lbsh/BSHStatementExpressionList;
    .restart local v1    # "jjtc000":Z
    :cond_3
    move-object v4, v3

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHStatementExpressionList;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 3432
    .restart local v0    # "jjtn000":Lbsh/BSHStatementExpressionList;
    .restart local v1    # "jjtc000":Z
    :cond_4
    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHStatementExpressionList;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3439
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHStatementExpressionList;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_5

    .line 3440
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3441
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5
    throw v3

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public final SwitchLabel()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2926
    new-instance v0, Lbsh/BSHSwitchLabel;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lbsh/BSHSwitchLabel;-><init>(I)V

    .line 2927
    .local v0, "jjtn000":Lbsh/BSHSwitchLabel;
    const/4 v1, 0x1

    .line 2928
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 2929
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 2931
    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v3

    :cond_0
    const/16 v5, 0x59

    sparse-switch v3, :sswitch_data_0

    .line 2946
    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_1

    .line 2938
    :sswitch_0
    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2939
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2940
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2941
    const/4 v1, 0x0

    .line 2942
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2943
    iput-boolean v2, v0, Lbsh/BSHSwitchLabel;->isDefault:Z

    .line 2944
    goto :goto_0

    .line 2933
    :sswitch_1
    const/16 v3, 0xf

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2934
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 2935
    invoke-direct {p0, v5}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2936
    nop

    .line 2965
    :goto_0
    if-eqz v1, :cond_1

    .line 2966
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2967
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2970
    :cond_1
    return-void

    .line 2946
    :goto_1
    const/16 v5, 0x4a

    :try_start_1
    iget v6, p0, Lbsh/Parser;->jj_gen:I

    aput v6, v3, v5

    .line 2947
    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2948
    new-instance v3, Lbsh/ParseException;

    invoke-direct {v3}, Lbsh/ParseException;-><init>()V

    .end local v0    # "jjtn000":Lbsh/BSHSwitchLabel;
    .end local v1    # "jjtc000":Z
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2950
    .restart local v0    # "jjtn000":Lbsh/BSHSwitchLabel;
    .restart local v1    # "jjtc000":Z
    :catchall_0
    move-exception v3

    .line 2951
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 2952
    :try_start_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 2953
    const/4 v1, 0x0

    goto :goto_2

    .line 2955
    :cond_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 2957
    :goto_2
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    .line 2960
    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_3

    .line 2961
    move-object v4, v3

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHSwitchLabel;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2963
    .restart local v0    # "jjtn000":Lbsh/BSHSwitchLabel;
    .restart local v1    # "jjtc000":Z
    :cond_3
    move-object v4, v3

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHSwitchLabel;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2958
    .restart local v0    # "jjtn000":Lbsh/BSHSwitchLabel;
    .restart local v1    # "jjtc000":Z
    :cond_4
    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHSwitchLabel;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2965
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHSwitchLabel;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_5

    .line 2966
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2967
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5
    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public final SwitchStatement()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2869
    new-instance v0, Lbsh/BSHSwitchStatement;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lbsh/BSHSwitchStatement;-><init>(I)V

    .line 2870
    .local v0, "jjtn000":Lbsh/BSHSwitchStatement;
    const/4 v1, 0x1

    .line 2871
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 2872
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 2874
    const/16 v2, 0x32

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2875
    const/16 v2, 0x48

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2876
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 2877
    const/16 v2, 0x49

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2878
    const/16 v4, 0x4a

    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2881
    :cond_0
    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v4

    :cond_1
    sparse-switch v4, :sswitch_data_0

    .line 2887
    iget-object v4, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_1

    .line 2885
    :sswitch_0
    nop

    .line 2890
    invoke-virtual {p0}, Lbsh/Parser;->SwitchLabel()V

    .line 2893
    :goto_0
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_2_29(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2898
    invoke-virtual {p0}, Lbsh/Parser;->BlockStatement()V

    goto :goto_0

    .line 2887
    :goto_1
    iget v5, p0, Lbsh/Parser;->jj_gen:I

    aput v5, v4, v2

    .line 2888
    nop

    .line 2901
    const/16 v2, 0x4b

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2917
    if-eqz v1, :cond_2

    .line 2918
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2919
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 2922
    :cond_2
    return-void

    .line 2902
    :catchall_0
    move-exception v2

    .line 2903
    .local v2, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 2904
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 2905
    const/4 v1, 0x0

    goto :goto_2

    .line 2907
    :cond_3
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 2909
    :goto_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_5

    .line 2912
    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_4

    .line 2913
    move-object v4, v2

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHSwitchStatement;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2915
    .restart local v0    # "jjtn000":Lbsh/BSHSwitchStatement;
    .restart local v1    # "jjtc000":Z
    :cond_4
    move-object v4, v2

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHSwitchStatement;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 2910
    .restart local v0    # "jjtn000":Lbsh/BSHSwitchStatement;
    .restart local v1    # "jjtc000":Z
    :cond_5
    move-object v4, v2

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHSwitchStatement;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2917
    .end local v2    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHSwitchStatement;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_6

    .line 2918
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 2919
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_6
    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public final SynchronizedStatement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 3577
    new-instance v0, Lbsh/BSHBlock;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lbsh/BSHBlock;-><init>(I)V

    .line 3578
    .local v0, "jjtn000":Lbsh/BSHBlock;
    const/4 v1, 0x1

    .line 3579
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 3580
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 3582
    const/16 v2, 0x33

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3583
    const/16 v2, 0x48

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3584
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 3585
    const/16 v2, 0x49

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3586
    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    .line 3587
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3588
    const/4 v1, 0x0

    .line 3589
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3590
    iput-boolean v3, v0, Lbsh/BSHBlock;->isSynchronized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3606
    if-eqz v1, :cond_0

    .line 3607
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3608
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3611
    :cond_0
    return-void

    .line 3591
    :catchall_0
    move-exception v2

    .line 3592
    .local v2, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 3593
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 3594
    const/4 v1, 0x0

    goto :goto_0

    .line 3596
    :cond_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 3598
    :goto_0
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_3

    .line 3601
    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_2

    .line 3602
    move-object v4, v2

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHBlock;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 3604
    .restart local v0    # "jjtn000":Lbsh/BSHBlock;
    .restart local v1    # "jjtc000":Z
    :cond_2
    move-object v4, v2

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHBlock;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 3599
    .restart local v0    # "jjtn000":Lbsh/BSHBlock;
    .restart local v1    # "jjtc000":Z
    :cond_3
    move-object v4, v2

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHBlock;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3606
    .end local v2    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHBlock;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    .line 3607
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3608
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_4
    throw v2
.end method

.method public final ThrowStatement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 3615
    new-instance v0, Lbsh/BSHThrowStatement;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Lbsh/BSHThrowStatement;-><init>(I)V

    .line 3616
    .local v0, "jjtn000":Lbsh/BSHThrowStatement;
    const/4 v1, 0x1

    .line 3617
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 3618
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 3620
    const/16 v2, 0x35

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3621
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 3622
    const/16 v2, 0x4e

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3638
    if-eqz v1, :cond_0

    .line 3639
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3640
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3643
    :cond_0
    return-void

    .line 3623
    :catchall_0
    move-exception v2

    .line 3624
    .local v2, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 3625
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 3626
    const/4 v1, 0x0

    goto :goto_0

    .line 3628
    :cond_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 3630
    :goto_0
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_3

    .line 3633
    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_2

    .line 3634
    move-object v4, v2

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHThrowStatement;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 3636
    .restart local v0    # "jjtn000":Lbsh/BSHThrowStatement;
    .restart local v1    # "jjtc000":Z
    :cond_2
    move-object v4, v2

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHThrowStatement;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 3631
    .restart local v0    # "jjtn000":Lbsh/BSHThrowStatement;
    .restart local v1    # "jjtc000":Z
    :cond_3
    move-object v4, v2

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHThrowStatement;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3638
    .end local v2    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHThrowStatement;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    .line 3639
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3640
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_4
    throw v2
.end method

.method public final TryStatement()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 3647
    new-instance v0, Lbsh/BSHTryStatement;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Lbsh/BSHTryStatement;-><init>(I)V

    .line 3648
    .local v0, "jjtn000":Lbsh/BSHTryStatement;
    const/4 v1, 0x1

    .line 3649
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 3650
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v2, 0x0

    .line 3652
    .local v2, "closed":Z
    const/16 v3, 0x38

    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3653
    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    .line 3656
    :goto_0
    iget v3, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v3

    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 3661
    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_1

    .line 3659
    :pswitch_0
    nop

    .line 3664
    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3665
    const/16 v3, 0x48

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3666
    invoke-virtual {p0}, Lbsh/Parser;->FormalParameter()V

    .line 3667
    const/16 v3, 0x49

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3668
    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    .line 3669
    const/4 v2, 0x1

    goto :goto_0

    .line 3661
    :goto_1
    const/16 v6, 0x56

    iget v7, p0, Lbsh/Parser;->jj_gen:I

    aput v7, v3, v6

    .line 3662
    nop

    .line 3671
    iget v3, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v3, v5, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v3

    :cond_1
    packed-switch v3, :pswitch_data_1

    .line 3678
    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_2

    .line 3673
    :pswitch_1
    const/16 v3, 0x1c

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3674
    invoke-virtual {p0}, Lbsh/Parser;->Block()V

    .line 3675
    const/4 v2, 0x1

    .line 3676
    goto :goto_3

    .line 3678
    :goto_2
    const/16 v5, 0x57

    iget v6, p0, Lbsh/Parser;->jj_gen:I

    aput v6, v3, v5

    .line 3681
    :goto_3
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3682
    const/4 v1, 0x0

    .line 3683
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3684
    if-eqz v2, :cond_3

    .line 3700
    if-eqz v1, :cond_2

    .line 3701
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3702
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3705
    :cond_2
    return-void

    .line 3684
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lbsh/Parser;->generateParseException()Lbsh/ParseException;

    move-result-object v3

    .end local v0    # "jjtn000":Lbsh/BSHTryStatement;
    .end local v1    # "jjtc000":Z
    .end local v2    # "closed":Z
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3685
    .restart local v0    # "jjtn000":Lbsh/BSHTryStatement;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "closed":Z
    :catchall_0
    move-exception v3

    .line 3686
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_4

    .line 3687
    :try_start_2
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 3688
    const/4 v1, 0x0

    goto :goto_4

    .line 3690
    :cond_4
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 3692
    :goto_4
    instance-of v5, v3, Ljava/lang/RuntimeException;

    if-nez v5, :cond_6

    .line 3695
    instance-of v5, v3, Lbsh/ParseException;

    if-eqz v5, :cond_5

    .line 3696
    move-object v5, v3

    check-cast v5, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHTryStatement;
    .end local v1    # "jjtc000":Z
    .end local v2    # "closed":Z
    throw v5

    .line 3698
    .restart local v0    # "jjtn000":Lbsh/BSHTryStatement;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "closed":Z
    :cond_5
    move-object v5, v3

    check-cast v5, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHTryStatement;
    .end local v1    # "jjtc000":Z
    .end local v2    # "closed":Z
    throw v5

    .line 3693
    .restart local v0    # "jjtn000":Lbsh/BSHTryStatement;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "closed":Z
    :cond_6
    move-object v5, v3

    check-cast v5, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHTryStatement;
    .end local v1    # "jjtc000":Z
    .end local v2    # "closed":Z
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3700
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHTryStatement;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "closed":Z
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_7

    .line 3701
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v0, v4}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3702
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_7
    throw v3

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_1
    .end packed-switch
.end method

.method public final Type()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 815
    new-instance v0, Lbsh/BSHType;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lbsh/BSHType;-><init>(I)V

    .line 816
    .local v0, "jjtn000":Lbsh/BSHType;
    const/4 v1, 0x1

    .line 817
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 818
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 820
    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v3

    :cond_0
    sparse-switch v3, :sswitch_data_0

    .line 835
    iget-object v3, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_1

    .line 832
    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->AmbiguousName()V

    .line 833
    goto :goto_0

    .line 829
    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->PrimitiveType()V

    .line 830
    nop

    .line 841
    :goto_0
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_2_6(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 846
    const/16 v3, 0x4c

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 847
    const/16 v3, 0x4d

    invoke-direct {p0, v3}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 848
    invoke-virtual {v0}, Lbsh/BSHType;->addArrayDimension()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 865
    :cond_1
    if-eqz v1, :cond_2

    .line 866
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 867
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 870
    :cond_2
    return-void

    .line 835
    :goto_1
    const/16 v5, 0x13

    :try_start_1
    iget v6, p0, Lbsh/Parser;->jj_gen:I

    aput v6, v3, v5

    .line 836
    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 837
    new-instance v3, Lbsh/ParseException;

    invoke-direct {v3}, Lbsh/ParseException;-><init>()V

    .end local v0    # "jjtn000":Lbsh/BSHType;
    .end local v1    # "jjtc000":Z
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 850
    .restart local v0    # "jjtn000":Lbsh/BSHType;
    .restart local v1    # "jjtc000":Z
    :catchall_0
    move-exception v3

    .line 851
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 852
    :try_start_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 853
    const/4 v1, 0x0

    goto :goto_2

    .line 855
    :cond_3
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 857
    :goto_2
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_5

    .line 860
    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_4

    .line 861
    move-object v4, v3

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHType;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 863
    .restart local v0    # "jjtn000":Lbsh/BSHType;
    .restart local v1    # "jjtc000":Z
    :cond_4
    move-object v4, v3

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHType;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 858
    .restart local v0    # "jjtn000":Lbsh/BSHType;
    .restart local v1    # "jjtc000":Z
    :cond_5
    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHType;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 865
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHType;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_6

    .line 866
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v2}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 867
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_6
    throw v3

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0xe -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
        0x1d -> :sswitch_1
        0x24 -> :sswitch_1
        0x26 -> :sswitch_1
        0x2f -> :sswitch_1
        0x45 -> :sswitch_0
    .end sparse-switch
.end method

.method public final TypedVariableDeclaration()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 3355
    new-instance v0, Lbsh/BSHTypedVariableDeclaration;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Lbsh/BSHTypedVariableDeclaration;-><init>(I)V

    .line 3356
    .local v0, "jjtn000":Lbsh/BSHTypedVariableDeclaration;
    const/4 v1, 0x1

    .line 3357
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 3358
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    const/4 v2, 0x0

    .line 3361
    .local v2, "t":Lbsh/Token;
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lbsh/Parser;->Modifiers(IZ)Lbsh/Modifiers;

    move-result-object v3

    .line 3362
    .local v3, "mods":Lbsh/Modifiers;
    invoke-virtual {p0}, Lbsh/Parser;->Type()V

    .line 3363
    invoke-virtual {p0}, Lbsh/Parser;->VariableDeclarator()V

    .line 3366
    :goto_0
    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v4

    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 3371
    iget-object v4, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_1

    .line 3369
    :pswitch_0
    nop

    .line 3374
    const/16 v4, 0x4f

    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3375
    invoke-virtual {p0}, Lbsh/Parser;->VariableDeclarator()V

    goto :goto_0

    .line 3371
    :goto_1
    const/16 v6, 0x51

    iget v7, p0, Lbsh/Parser;->jj_gen:I

    aput v7, v4, v6

    .line 3372
    nop

    .line 3377
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3378
    const/4 v1, 0x0

    .line 3379
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3380
    iput-object v3, v0, Lbsh/BSHTypedVariableDeclaration;->modifiers:Lbsh/Modifiers;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3396
    if-eqz v1, :cond_1

    .line 3397
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3398
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3401
    :cond_1
    return-void

    .line 3381
    .end local v3    # "mods":Lbsh/Modifiers;
    :catchall_0
    move-exception v3

    .line 3382
    .local v3, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 3383
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 3384
    const/4 v1, 0x0

    goto :goto_2

    .line 3386
    :cond_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 3388
    :goto_2
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    .line 3391
    instance-of v4, v3, Lbsh/ParseException;

    if-eqz v4, :cond_3

    .line 3392
    move-object v4, v3

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHTypedVariableDeclaration;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v4

    .line 3394
    .restart local v0    # "jjtn000":Lbsh/BSHTypedVariableDeclaration;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :cond_3
    move-object v4, v3

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHTypedVariableDeclaration;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v4

    .line 3389
    .restart local v0    # "jjtn000":Lbsh/BSHTypedVariableDeclaration;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :cond_4
    move-object v4, v3

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHTypedVariableDeclaration;
    .end local v1    # "jjtc000":Z
    .end local v2    # "t":Lbsh/Token;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3396
    .end local v3    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHTypedVariableDeclaration;
    .restart local v1    # "jjtc000":Z
    .restart local v2    # "t":Lbsh/Token;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_5

    .line 3397
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v5}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3398
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5
    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public final UnaryExpression()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1746
    const/4 v0, 0x0

    .line 1747
    .local v0, "t":Lbsh/Token;
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 1809
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x2f

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 1810
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1811
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 1750
    :sswitch_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 1758
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x2e

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 1759
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1760
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 1755
    :pswitch_0
    const/16 v1, 0x67

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1756
    goto :goto_0

    .line 1752
    :pswitch_1
    const/16 v1, 0x66

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1753
    nop

    .line 1762
    :goto_0
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    .line 1763
    new-instance v1, Lbsh/BSHUnaryExpression;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lbsh/BSHUnaryExpression;-><init>(I)V

    .line 1764
    .local v1, "jjtn001":Lbsh/BSHUnaryExpression;
    const/4 v2, 0x1

    .line 1765
    .local v2, "jjtc001":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1766
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1768
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1769
    const/4 v2, 0x0

    .line 1770
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1771
    iget v4, v0, Lbsh/Token;->kind:I

    iput v4, v1, Lbsh/BSHUnaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1773
    if-eqz v2, :cond_2

    .line 1774
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1775
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1778
    :cond_2
    goto :goto_1

    .line 1773
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 1774
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1775
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_3
    throw v4

    .line 1783
    .end local v1    # "jjtn001":Lbsh/BSHUnaryExpression;
    .end local v2    # "jjtc001":Z
    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->PreDecrementExpression()V

    .line 1784
    goto :goto_1

    .line 1780
    :sswitch_2
    invoke-virtual {p0}, Lbsh/Parser;->PreIncrementExpression()V

    .line 1781
    goto :goto_1

    .line 1806
    :sswitch_3
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpressionNotPlusMinus()V

    .line 1807
    nop

    .line 1813
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_3
        0xe -> :sswitch_3
        0x11 -> :sswitch_3
        0x16 -> :sswitch_3
        0x1a -> :sswitch_3
        0x1d -> :sswitch_3
        0x24 -> :sswitch_3
        0x26 -> :sswitch_3
        0x28 -> :sswitch_3
        0x29 -> :sswitch_3
        0x2f -> :sswitch_3
        0x37 -> :sswitch_3
        0x39 -> :sswitch_3
        0x3c -> :sswitch_3
        0x40 -> :sswitch_3
        0x42 -> :sswitch_3
        0x43 -> :sswitch_3
        0x45 -> :sswitch_3
        0x48 -> :sswitch_3
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final UnaryExpressionNotPlusMinus()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 1858
    const/4 v0, 0x0

    .line 1859
    .local v0, "t":Lbsh/Token;
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1892
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x31

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 1893
    const v1, 0x7fffffff

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_2_9(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1894
    invoke-virtual {p0}, Lbsh/Parser;->CastExpression()V

    goto/16 :goto_1

    .line 1862
    :pswitch_0
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_1
    packed-switch v1, :pswitch_data_1

    .line 1870
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x30

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 1871
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1872
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 1864
    :pswitch_1
    const/16 v1, 0x57

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1865
    goto :goto_0

    .line 1867
    :pswitch_2
    const/16 v1, 0x56

    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v0

    .line 1868
    nop

    .line 1874
    :goto_0
    invoke-virtual {p0}, Lbsh/Parser;->UnaryExpression()V

    .line 1875
    new-instance v1, Lbsh/BSHUnaryExpression;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lbsh/BSHUnaryExpression;-><init>(I)V

    .line 1876
    .local v1, "jjtn001":Lbsh/BSHUnaryExpression;
    const/4 v2, 0x1

    .line 1877
    .local v2, "jjtc001":Z
    iget-object v3, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v3, v1}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 1878
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 1880
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1881
    const/4 v2, 0x0

    .line 1882
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1883
    iget v4, v0, Lbsh/Token;->kind:I

    iput v4, v1, Lbsh/BSHUnaryExpression;->kind:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1885
    if-eqz v2, :cond_2

    .line 1886
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1887
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 1890
    :cond_2
    goto :goto_1

    .line 1885
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 1886
    iget-object v5, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v5, v1, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;I)V

    .line 1887
    invoke-virtual {p0, v1}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_3
    throw v4

    .line 1896
    .end local v1    # "jjtn001":Lbsh/BSHUnaryExpression;
    .end local v2    # "jjtc001":Z
    :cond_4
    iget v1, p0, Lbsh/Parser;->jj_ntk:I

    if-ne v1, v2, :cond_5

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v1

    :cond_5
    sparse-switch v1, :sswitch_data_0

    .line 1919
    iget-object v1, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v3, 0x32

    iget v4, p0, Lbsh/Parser;->jj_gen:I

    aput v4, v1, v3

    .line 1920
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 1921
    new-instance v1, Lbsh/ParseException;

    invoke-direct {v1}, Lbsh/ParseException;-><init>()V

    throw v1

    .line 1916
    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->PostfixExpression()V

    .line 1917
    nop

    .line 1925
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x56
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1d -> :sswitch_0
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x37 -> :sswitch_0
        0x39 -> :sswitch_0
        0x3c -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x45 -> :sswitch_0
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method public final VariableDeclarator()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 527
    new-instance v0, Lbsh/BSHVariableDeclarator;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lbsh/BSHVariableDeclarator;-><init>(I)V

    .line 528
    .local v0, "jjtn000":Lbsh/BSHVariableDeclarator;
    const/4 v1, 0x1

    .line 529
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 530
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 532
    const/16 v2, 0x45

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    move-result-object v2

    .line 533
    .local v2, "t":Lbsh/Token;
    iget v4, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v4

    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 539
    iget-object v4, p0, Lbsh/Parser;->jj_la1:[I

    goto :goto_0

    .line 535
    :pswitch_0
    const/16 v4, 0x51

    invoke-direct {p0, v4}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 536
    invoke-virtual {p0}, Lbsh/Parser;->VariableInitializer()V

    .line 537
    goto :goto_1

    .line 539
    :goto_0
    const/16 v5, 0xc

    iget v6, p0, Lbsh/Parser;->jj_gen:I

    aput v6, v4, v5

    .line 542
    :goto_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 543
    const/4 v1, 0x0

    .line 544
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 545
    iget-object v4, v2, Lbsh/Token;->image:Ljava/lang/String;

    iput-object v4, v0, Lbsh/BSHVariableDeclarator;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    if-eqz v1, :cond_1

    .line 562
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 563
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 566
    :cond_1
    return-void

    .line 546
    .end local v2    # "t":Lbsh/Token;
    :catchall_0
    move-exception v2

    .line 547
    .local v2, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 548
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 549
    const/4 v1, 0x0

    goto :goto_2

    .line 551
    :cond_2
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 553
    :goto_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_4

    .line 556
    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_3

    .line 557
    move-object v4, v2

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHVariableDeclarator;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 559
    .restart local v0    # "jjtn000":Lbsh/BSHVariableDeclarator;
    .restart local v1    # "jjtc000":Z
    :cond_3
    move-object v4, v2

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHVariableDeclarator;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 554
    .restart local v0    # "jjtn000":Lbsh/BSHVariableDeclarator;
    .restart local v1    # "jjtc000":Z
    :cond_4
    move-object v4, v2

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHVariableDeclarator;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 561
    .end local v2    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHVariableDeclarator;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_5

    .line 562
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 563
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_5
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch
.end method

.method public final VariableInitializer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 579
    iget v0, p0, Lbsh/Parser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lbsh/Parser;->jj_ntk()I

    move-result v0

    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 611
    iget-object v0, p0, Lbsh/Parser;->jj_la1:[I

    const/16 v2, 0xd

    iget v3, p0, Lbsh/Parser;->jj_gen:I

    aput v3, v0, v2

    .line 612
    invoke-direct {p0, v1}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 613
    new-instance v0, Lbsh/ParseException;

    invoke-direct {v0}, Lbsh/ParseException;-><init>()V

    throw v0

    .line 581
    :sswitch_0
    invoke-virtual {p0}, Lbsh/Parser;->ArrayInitializer()V

    .line 582
    goto :goto_0

    .line 608
    :sswitch_1
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 609
    nop

    .line 615
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0xe -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1d -> :sswitch_1
        0x24 -> :sswitch_1
        0x26 -> :sswitch_1
        0x28 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2f -> :sswitch_1
        0x37 -> :sswitch_1
        0x39 -> :sswitch_1
        0x3c -> :sswitch_1
        0x40 -> :sswitch_1
        0x42 -> :sswitch_1
        0x43 -> :sswitch_1
        0x45 -> :sswitch_1
        0x48 -> :sswitch_1
        0x4a -> :sswitch_0
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
    .end sparse-switch
.end method

.method public final VoidLiteral()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 2434
    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 2435
    return-void
.end method

.method public final WhileStatement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/ParseException;
        }
    .end annotation

    .line 3017
    new-instance v0, Lbsh/BSHWhileStatement;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lbsh/BSHWhileStatement;-><init>(I)V

    .line 3018
    .local v0, "jjtn000":Lbsh/BSHWhileStatement;
    const/4 v1, 0x1

    .line 3019
    .local v1, "jjtc000":Z
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0}, Lbsh/JJTParserState;->openNodeScope(Lbsh/Node;)V

    .line 3020
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeOpenNodeScope(Lbsh/Node;)V

    .line 3022
    const/16 v2, 0x3b

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3023
    const/16 v2, 0x48

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3024
    invoke-virtual {p0}, Lbsh/Parser;->Expression()V

    .line 3025
    const/16 v2, 0x49

    invoke-direct {p0, v2}, Lbsh/Parser;->jj_consume_token(I)Lbsh/Token;

    .line 3026
    invoke-virtual {p0}, Lbsh/Parser;->Statement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3042
    if-eqz v1, :cond_0

    .line 3043
    iget-object v2, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v2, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3044
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    .line 3047
    :cond_0
    return-void

    .line 3027
    :catchall_0
    move-exception v2

    .line 3028
    .local v2, "jjte000":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 3029
    :try_start_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0}, Lbsh/JJTParserState;->clearNodeScope(Lbsh/Node;)V

    .line 3030
    const/4 v1, 0x0

    goto :goto_0

    .line 3032
    :cond_1
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    .line 3034
    :goto_0
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_3

    .line 3037
    instance-of v4, v2, Lbsh/ParseException;

    if-eqz v4, :cond_2

    .line 3038
    move-object v4, v2

    check-cast v4, Lbsh/ParseException;

    .end local v0    # "jjtn000":Lbsh/BSHWhileStatement;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 3040
    .restart local v0    # "jjtn000":Lbsh/BSHWhileStatement;
    .restart local v1    # "jjtc000":Z
    :cond_2
    move-object v4, v2

    check-cast v4, Ljava/lang/Error;

    .end local v0    # "jjtn000":Lbsh/BSHWhileStatement;
    .end local v1    # "jjtc000":Z
    throw v4

    .line 3035
    .restart local v0    # "jjtn000":Lbsh/BSHWhileStatement;
    .restart local v1    # "jjtc000":Z
    :cond_3
    move-object v4, v2

    check-cast v4, Ljava/lang/RuntimeException;

    .end local v0    # "jjtn000":Lbsh/BSHWhileStatement;
    .end local v1    # "jjtc000":Z
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3042
    .end local v2    # "jjte000":Ljava/lang/Throwable;
    .restart local v0    # "jjtn000":Lbsh/BSHWhileStatement;
    .restart local v1    # "jjtc000":Z
    :catchall_1
    move-exception v2

    if-eqz v1, :cond_4

    .line 3043
    iget-object v4, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v4, v0, v3}, Lbsh/JJTParserState;->closeNodeScope(Lbsh/Node;Z)V

    .line 3044
    invoke-virtual {p0, v0}, Lbsh/Parser;->jjtreeCloseNodeScope(Lbsh/Node;)V

    :cond_4
    throw v2
.end method

.method createParseException(Ljava/lang/String;)Lbsh/ParseException;
    .locals 7
    .param p1, "message"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    .line 152
    .local v0, "errortok":Lbsh/Token;
    iget v1, v0, Lbsh/Token;->beginLine:I

    .local v1, "line":I
    iget v2, v0, Lbsh/Token;->beginColumn:I

    .line 153
    .local v2, "column":I
    iget v3, v0, Lbsh/Token;->kind:I

    if-nez v3, :cond_0

    sget-object v3, Lbsh/Parser;->tokenImage:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lbsh/Token;->image:Ljava/lang/String;

    .line 154
    .local v3, "mess":Ljava/lang/String;
    :goto_0
    new-instance v4, Lbsh/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse error at line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", column "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lbsh/ParseException;-><init>(Ljava/lang/String;)V

    return-object v4
.end method

.method public final disable_tracing()V
    .locals 0

    .line 6113
    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    .line 6110
    return-void
.end method

.method public generateParseException()Lbsh/ParseException;
    .locals 8

    .line 6062
    iget-object v0, p0, Lbsh/Parser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 6063
    const/16 v0, 0x86

    new-array v1, v0, [Z

    .line 6064
    .local v1, "la1tokens":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    .line 6065
    aput-boolean v3, v1, v2

    .line 6064
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6067
    .end local v2    # "i":I
    :cond_0
    iget v2, p0, Lbsh/Parser;->jj_kind:I

    const/4 v4, 0x1

    if-ltz v2, :cond_1

    .line 6068
    aput-boolean v4, v1, v2

    .line 6069
    const/4 v2, -0x1

    iput v2, p0, Lbsh/Parser;->jj_kind:I

    .line 6071
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    const/16 v5, 0x58

    if-ge v2, v5, :cond_8

    .line 6072
    iget-object v5, p0, Lbsh/Parser;->jj_la1:[I

    aget v5, v5, v2

    iget v6, p0, Lbsh/Parser;->jj_gen:I

    if-ne v5, v6, :cond_7

    .line 6073
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    const/16 v6, 0x20

    if-ge v5, v6, :cond_7

    .line 6074
    sget-object v6, Lbsh/Parser;->jj_la1_0:[I

    aget v6, v6, v2

    shl-int v7, v4, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 6075
    aput-boolean v4, v1, v5

    .line 6077
    :cond_2
    sget-object v6, Lbsh/Parser;->jj_la1_1:[I

    aget v6, v6, v2

    shl-int v7, v4, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    .line 6078
    add-int/lit8 v6, v5, 0x20

    aput-boolean v4, v1, v6

    .line 6080
    :cond_3
    sget-object v6, Lbsh/Parser;->jj_la1_2:[I

    aget v6, v6, v2

    shl-int v7, v4, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    .line 6081
    add-int/lit8 v6, v5, 0x40

    aput-boolean v4, v1, v6

    .line 6083
    :cond_4
    sget-object v6, Lbsh/Parser;->jj_la1_3:[I

    aget v6, v6, v2

    shl-int v7, v4, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_5

    .line 6084
    add-int/lit8 v6, v5, 0x60

    aput-boolean v4, v1, v6

    .line 6086
    :cond_5
    sget-object v6, Lbsh/Parser;->jj_la1_4:[I

    aget v6, v6, v2

    shl-int v7, v4, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_6

    .line 6087
    add-int/lit16 v6, v5, 0x80

    aput-boolean v4, v1, v6

    .line 6073
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 6071
    .end local v5    # "j":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6092
    .end local v2    # "i":I
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_a

    .line 6093
    aget-boolean v5, v1, v2

    if-eqz v5, :cond_9

    .line 6094
    new-array v5, v4, [I

    iput-object v5, p0, Lbsh/Parser;->jj_expentry:[I

    .line 6095
    aput v2, v5, v3

    .line 6096
    iget-object v6, p0, Lbsh/Parser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 6092
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6099
    .end local v2    # "i":I
    :cond_a
    iput v3, p0, Lbsh/Parser;->jj_endpos:I

    .line 6100
    invoke-direct {p0}, Lbsh/Parser;->jj_rescan_token()V

    .line 6101
    invoke-direct {p0, v3, v3}, Lbsh/Parser;->jj_add_error_token(II)V

    .line 6102
    iget-object v0, p0, Lbsh/Parser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [[I

    .line 6103
    .local v0, "exptokseq":[[I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v3, p0, Lbsh/Parser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 6104
    iget-object v3, p0, Lbsh/Parser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    aput-object v3, v0, v2

    .line 6103
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 6106
    .end local v2    # "i":I
    :cond_b
    new-instance v2, Lbsh/ParseException;

    iget-object v3, p0, Lbsh/Parser;->token:Lbsh/Token;

    sget-object v4, Lbsh/Parser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v2, v3, v0, v4}, Lbsh/ParseException;-><init>(Lbsh/Token;[[I[Ljava/lang/String;)V

    return-object v2
.end method

.method public final getNextToken()Lbsh/Token;
    .locals 2

    .line 6004
    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    goto :goto_0

    .line 6005
    :cond_0
    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    iget-object v1, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v1}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v1

    iput-object v1, v0, Lbsh/Token;->next:Lbsh/Token;

    iput-object v1, p0, Lbsh/Parser;->token:Lbsh/Token;

    .line 6006
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lbsh/Parser;->jj_ntk:I

    .line 6007
    iget v0, p0, Lbsh/Parser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/Parser;->jj_gen:I

    .line 6008
    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    return-object v0
.end method

.method public final getToken(I)Lbsh/Token;
    .locals 3
    .param p1, "index"    # I

    .line 6012
    iget-boolean v0, p0, Lbsh/Parser;->lookingAhead:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsh/Parser;->jj_scanpos:Lbsh/Token;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbsh/Parser;->token:Lbsh/Token;

    .line 6013
    .local v0, "t":Lbsh/Token;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 6014
    iget-object v2, v0, Lbsh/Token;->next:Lbsh/Token;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lbsh/Token;->next:Lbsh/Token;

    goto :goto_2

    .line 6015
    :cond_1
    iget-object v2, p0, Lbsh/Parser;->token_source:Lbsh/ParserTokenManager;

    invoke-virtual {v2}, Lbsh/ParserTokenManager;->getNextToken()Lbsh/Token;

    move-result-object v2

    iput-object v2, v0, Lbsh/Token;->next:Lbsh/Token;

    move-object v0, v2

    .line 6013
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6017
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method isRegularForStatement()Z
    .locals 5

    .line 123
    const/4 v0, 0x1

    .line 125
    .local v0, "curTok":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "curTok":I
    .local v1, "curTok":I
    invoke-virtual {p0, v0}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    .line 126
    .local v0, "tok":Lbsh/Token;
    iget v2, v0, Lbsh/Token;->kind:I

    const/4 v3, 0x0

    const/16 v4, 0x1e

    if-eq v2, v4, :cond_0

    return v3

    .line 127
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "curTok":I
    .local v2, "curTok":I
    invoke-virtual {p0, v1}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    .line 128
    iget v1, v0, Lbsh/Token;->kind:I

    const/16 v4, 0x48

    if-eq v1, v4, :cond_1

    return v3

    .line 131
    :cond_1
    :goto_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "curTok":I
    .restart local v1    # "curTok":I
    invoke-virtual {p0, v2}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v0

    .line 132
    iget v2, v0, Lbsh/Token;->kind:I

    sparse-switch v2, :sswitch_data_0

    .line 138
    move v2, v1

    goto :goto_0

    .line 134
    :sswitch_0
    return v3

    .line 136
    :sswitch_1
    const/4 v2, 0x1

    return v2

    .line 138
    :sswitch_2
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4e -> :sswitch_1
        0x59 -> :sswitch_0
    .end sparse-switch
.end method

.method jjtreeCloseNodeScope(Lbsh/Node;)V
    .locals 2
    .param p1, "n"    # Lbsh/Node;

    .line 69
    move-object v0, p1

    check-cast v0, Lbsh/SimpleNode;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v1

    iput-object v1, v0, Lbsh/SimpleNode;->lastToken:Lbsh/Token;

    .line 70
    return-void
.end method

.method jjtreeOpenNodeScope(Lbsh/Node;)V
    .locals 2
    .param p1, "n"    # Lbsh/Node;

    .line 65
    move-object v0, p1

    check-cast v0, Lbsh/SimpleNode;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lbsh/Parser;->getToken(I)Lbsh/Token;

    move-result-object v1

    iput-object v1, v0, Lbsh/SimpleNode;->firstToken:Lbsh/Token;

    .line 66
    return-void
.end method

.method public popNode()Lbsh/SimpleNode;
    .locals 1

    .line 81
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0}, Lbsh/JJTParserState;->nodeArity()I

    move-result v0

    if-lez v0, :cond_0

    .line 82
    iget-object v0, p0, Lbsh/Parser;->jjtree:Lbsh/JJTParserState;

    invoke-virtual {v0}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    move-result-object v0

    check-cast v0, Lbsh/SimpleNode;

    return-object v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method reInitInput(Ljava/io/Reader;)V
    .locals 0
    .param p1, "in"    # Ljava/io/Reader;

    .line 76
    invoke-virtual {p0, p1}, Lbsh/Parser;->ReInit(Ljava/io/Reader;)V

    .line 77
    return-void
.end method

.method reInitTokenInput(Ljava/io/Reader;)V
    .locals 3
    .param p1, "in"    # Ljava/io/Reader;

    .line 93
    iget-object v0, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    .line 94
    invoke-virtual {v0}, Lbsh/JavaCharStream;->getEndLine()I

    move-result v1

    iget-object v2, p0, Lbsh/Parser;->jj_input_stream:Lbsh/JavaCharStream;

    .line 95
    invoke-virtual {v2}, Lbsh/JavaCharStream;->getEndColumn()I

    move-result v2

    .line 93
    invoke-virtual {v0, p1, v1, v2}, Lbsh/JavaCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 96
    return-void
.end method

.method public setRetainComments(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 61
    iput-boolean p1, p0, Lbsh/Parser;->retainComments:Z

    .line 62
    return-void
.end method
