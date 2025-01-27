.class Lcom/sleepycat/json_simple/Yytoken;
.super Ljava/lang/Object;
.source "Yytoken.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/json_simple/Yytoken$Types;
    }
.end annotation


# instance fields
.field private final type:Lcom/sleepycat/json_simple/Yytoken$Types;

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/sleepycat/json_simple/Yytoken$Types;Ljava/lang/Object;)V
    .locals 2
    .param p1, "type"    # Lcom/sleepycat/json_simple/Yytoken$Types;
    .param p2, "value"    # Ljava/lang/Object;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/sleepycat/json_simple/Yytoken$1;->$SwitchMap$com$sleepycat$json_simple$Yytoken$Types:[I

    invoke-virtual {p1}, Lcom/sleepycat/json_simple/Yytoken$Types;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 70
    iput-object p2, p0, Lcom/sleepycat/json_simple/Yytoken;->value:Ljava/lang/Object;

    goto :goto_0

    .line 67
    :pswitch_0
    const-string v0, "]"

    iput-object v0, p0, Lcom/sleepycat/json_simple/Yytoken;->value:Ljava/lang/Object;

    .line 68
    goto :goto_0

    .line 64
    :pswitch_1
    const-string v0, "}"

    iput-object v0, p0, Lcom/sleepycat/json_simple/Yytoken;->value:Ljava/lang/Object;

    .line 65
    goto :goto_0

    .line 61
    :pswitch_2
    const-string v0, "["

    iput-object v0, p0, Lcom/sleepycat/json_simple/Yytoken;->value:Ljava/lang/Object;

    .line 62
    goto :goto_0

    .line 58
    :pswitch_3
    const-string v0, "{"

    iput-object v0, p0, Lcom/sleepycat/json_simple/Yytoken;->value:Ljava/lang/Object;

    .line 59
    goto :goto_0

    .line 55
    :pswitch_4
    const-string v0, ""

    iput-object v0, p0, Lcom/sleepycat/json_simple/Yytoken;->value:Ljava/lang/Object;

    .line 56
    goto :goto_0

    .line 52
    :pswitch_5
    const-string v0, ","

    iput-object v0, p0, Lcom/sleepycat/json_simple/Yytoken;->value:Ljava/lang/Object;

    .line 53
    goto :goto_0

    .line 49
    :pswitch_6
    const-string v0, ":"

    iput-object v0, p0, Lcom/sleepycat/json_simple/Yytoken;->value:Ljava/lang/Object;

    .line 50
    nop

    .line 73
    :goto_0
    iput-object p1, p0, Lcom/sleepycat/json_simple/Yytoken;->type:Lcom/sleepycat/json_simple/Yytoken$Types;

    .line 74
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method getType()Lcom/sleepycat/json_simple/Yytoken$Types;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sleepycat/json_simple/Yytoken;->type:Lcom/sleepycat/json_simple/Yytoken$Types;

    return-object v0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sleepycat/json_simple/Yytoken;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/sleepycat/json_simple/Yytoken;->type:Lcom/sleepycat/json_simple/Yytoken$Types;

    invoke-virtual {v1}, Lcom/sleepycat/json_simple/Yytoken$Types;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/json_simple/Yytoken;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
