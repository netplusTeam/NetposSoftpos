.class Lbsh/BSHLiteral;
.super Lbsh/SimpleNode;
.source "BSHLiteral.java"


# instance fields
.field public value:Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 35
    invoke-direct {p0, p1}, Lbsh/SimpleNode;-><init>(I)V

    return-void
.end method

.method private getEscapeChar(C)C
    .locals 0
    .param p1, "ch"    # C

    .line 48
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 55
    :sswitch_0
    const/16 p1, 0x9

    .line 56
    goto :goto_0

    .line 67
    :sswitch_1
    const/16 p1, 0xd

    .line 68
    goto :goto_0

    .line 59
    :sswitch_2
    const/16 p1, 0xa

    .line 60
    goto :goto_0

    .line 63
    :sswitch_3
    const/16 p1, 0xc

    .line 64
    goto :goto_0

    .line 51
    :sswitch_4
    const/16 p1, 0x8

    .line 52
    nop

    .line 77
    :goto_0
    return p1

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_4
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_1
        0x74 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public charSetup(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 83
    .local v0, "ch":C
    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    .line 86
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 88
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v0, v1

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0, v0}, Lbsh/BSHLiteral;->getEscapeChar(C)C

    move-result v0

    .line 94
    :cond_1
    :goto_0
    new-instance v1, Lbsh/Primitive;

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {v1, v2}, Lbsh/Primitive;-><init>(C)V

    iput-object v1, p0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public eval(Lbsh/CallStack;Lbsh/Interpreter;)Ljava/lang/Object;
    .locals 3
    .param p1, "callstack"    # Lbsh/CallStack;
    .param p2, "interpreter"    # Lbsh/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 43
    return-object v0

    .line 41
    :cond_0
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null in bsh literal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stringSetup(Ljava/lang/String;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 103
    .local v2, "ch":C
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2

    .line 106
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 108
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    move v3, v1

    .line 113
    .local v3, "endPos":I
    :goto_1
    add-int/lit8 v4, v1, 0x2

    if-ge v3, v4, :cond_0

    .line 115
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 121
    :cond_0
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-char v2, v4

    .line 122
    move v1, v3

    .line 123
    .end local v3    # "endPos":I
    goto :goto_2

    .line 125
    :cond_1
    invoke-direct {p0, v2}, Lbsh/BSHLiteral;->getEscapeChar(C)C

    move-result v2

    .line 128
    :cond_2
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    .end local v2    # "ch":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbsh/BSHLiteral;->value:Ljava/lang/Object;

    .line 132
    return-void
.end method
