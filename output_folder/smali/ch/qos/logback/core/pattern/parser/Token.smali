.class Lch/qos/logback/core/pattern/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field static BARE_COMPOSITE_KEYWORD_TOKEN:Lch/qos/logback/core/pattern/parser/Token; = null

.field static final COMPOSITE_KEYWORD:I = 0x3ed

.field static final CURLY_LEFT:I = 0x7b

.field static final CURLY_RIGHT:I = 0x7d

.field static final DOT:I = 0x2e

.field static final EOF:I = 0x7fffffff

.field static EOF_TOKEN:Lch/qos/logback/core/pattern/parser/Token; = null

.field static final FORMAT_MODIFIER:I = 0x3ea

.field static final LITERAL:I = 0x3e8

.field static final MINUS:I = 0x2d

.field static final OPTION:I = 0x3ee

.field static final PERCENT:I = 0x25

.field static PERCENT_TOKEN:Lch/qos/logback/core/pattern/parser/Token; = null

.field static final RIGHT_PARENTHESIS:I = 0x29

.field static RIGHT_PARENTHESIS_TOKEN:Lch/qos/logback/core/pattern/parser/Token; = null

.field static final SIMPLE_KEYWORD:I = 0x3ec


# instance fields
.field private final type:I

.field private final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lch/qos/logback/core/pattern/parser/Token;

    const v1, 0x7fffffff

    const-string v2, "EOF"

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/pattern/parser/Token;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lch/qos/logback/core/pattern/parser/Token;->EOF_TOKEN:Lch/qos/logback/core/pattern/parser/Token;

    .line 35
    new-instance v0, Lch/qos/logback/core/pattern/parser/Token;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Lch/qos/logback/core/pattern/parser/Token;-><init>(I)V

    sput-object v0, Lch/qos/logback/core/pattern/parser/Token;->RIGHT_PARENTHESIS_TOKEN:Lch/qos/logback/core/pattern/parser/Token;

    .line 36
    new-instance v0, Lch/qos/logback/core/pattern/parser/Token;

    const/16 v1, 0x3ed

    const-string v2, "BARE"

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/pattern/parser/Token;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lch/qos/logback/core/pattern/parser/Token;->BARE_COMPOSITE_KEYWORD_TOKEN:Lch/qos/logback/core/pattern/parser/Token;

    .line 37
    new-instance v0, Lch/qos/logback/core/pattern/parser/Token;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Lch/qos/logback/core/pattern/parser/Token;-><init>(I)V

    sput-object v0, Lch/qos/logback/core/pattern/parser/Token;->PERCENT_TOKEN:Lch/qos/logback/core/pattern/parser/Token;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lch/qos/logback/core/pattern/parser/Token;-><init>(ILjava/lang/Object;)V

    .line 44
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lch/qos/logback/core/pattern/parser/Token;->type:I

    .line 48
    iput-object p2, p0, Lch/qos/logback/core/pattern/parser/Token;->value:Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 104
    return v0

    .line 105
    :cond_0
    instance-of v1, p1, Lch/qos/logback/core/pattern/parser/Token;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 106
    return v2

    .line 108
    :cond_1
    move-object v1, p1

    check-cast v1, Lch/qos/logback/core/pattern/parser/Token;

    .line 110
    .local v1, "token":Lch/qos/logback/core/pattern/parser/Token;
    iget v3, p0, Lch/qos/logback/core/pattern/parser/Token;->type:I

    iget v4, v1, Lch/qos/logback/core/pattern/parser/Token;->type:I

    if-eq v3, v4, :cond_2

    .line 111
    return v2

    .line 112
    :cond_2
    iget-object v3, p0, Lch/qos/logback/core/pattern/parser/Token;->value:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v4, v1, Lch/qos/logback/core/pattern/parser/Token;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_3
    iget-object v3, v1, Lch/qos/logback/core/pattern/parser/Token;->value:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 113
    :goto_0
    return v2

    .line 115
    :cond_4
    return v0
.end method

.method public getType()I
    .locals 1

    .line 52
    iget v0, p0, Lch/qos/logback/core/pattern/parser/Token;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 56
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/Token;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 97
    iget v0, p0, Lch/qos/logback/core/pattern/parser/Token;->type:I

    .line 98
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/Token;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 99
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "typeStr":Ljava/lang/String;
    iget v1, p0, Lch/qos/logback/core/pattern/parser/Token;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 85
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 73
    :sswitch_0
    const-string v0, "OPTION"

    .line 74
    goto :goto_0

    .line 79
    :sswitch_1
    const-string v0, "COMPOSITE_KEYWORD"

    .line 80
    goto :goto_0

    .line 76
    :sswitch_2
    const-string v0, "SIMPLE_KEYWORD"

    .line 77
    goto :goto_0

    .line 67
    :sswitch_3
    const-string v0, "FormatModifier"

    .line 68
    goto :goto_0

    .line 70
    :sswitch_4
    const-string v0, "LITERAL"

    .line 71
    goto :goto_0

    .line 82
    :sswitch_5
    const-string v0, "RIGHT_PARENTHESIS"

    .line 83
    goto :goto_0

    .line 64
    :sswitch_6
    const-string v0, "%"

    .line 65
    nop

    .line 87
    :goto_0
    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/Token;->value:Ljava/lang/Object;

    const-string v2, "Token("

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 91
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/Token;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_6
        0x29 -> :sswitch_5
        0x3e8 -> :sswitch_4
        0x3ea -> :sswitch_3
        0x3ec -> :sswitch_2
        0x3ed -> :sswitch_1
        0x3ee -> :sswitch_0
    .end sparse-switch
.end method
