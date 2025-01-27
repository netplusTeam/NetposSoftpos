.class public Lcom/sleepycat/json_simple/JsonException;
.super Ljava/lang/Exception;
.source "JsonException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/json_simple/JsonException$Problems;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final position:I

.field private final problemType:Lcom/sleepycat/json_simple/JsonException$Problems;

.field private final unexpectedObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILcom/sleepycat/json_simple/JsonException$Problems;Ljava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "problemType"    # Lcom/sleepycat/json_simple/JsonException$Problems;
    .param p3, "unexpectedObject"    # Ljava/lang/Object;

    .line 43
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 44
    iput p1, p0, Lcom/sleepycat/json_simple/JsonException;->position:I

    .line 45
    iput-object p2, p0, Lcom/sleepycat/json_simple/JsonException;->problemType:Lcom/sleepycat/json_simple/JsonException$Problems;

    .line 46
    iput-object p3, p0, Lcom/sleepycat/json_simple/JsonException;->unexpectedObject:Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/sleepycat/json_simple/JsonException$Problems;->IOEXCEPTION:Lcom/sleepycat/json_simple/JsonException$Problems;

    invoke-virtual {v0, p2}, Lcom/sleepycat/json_simple/JsonException$Problems;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sleepycat/json_simple/JsonException$Problems;->UNEXPECTED_EXCEPTION:Lcom/sleepycat/json_simple/JsonException$Problems;

    invoke-virtual {v0, p2}, Lcom/sleepycat/json_simple/JsonException$Problems;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    instance-of v0, p3, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 49
    move-object v0, p3

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lcom/sleepycat/json_simple/JsonException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 5

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/sleepycat/json_simple/JsonException$1;->$SwitchMap$com$sleepycat$json_simple$JsonException$Problems:[I

    iget-object v2, p0, Lcom/sleepycat/json_simple/JsonException;->problemType:Lcom/sleepycat/json_simple/JsonException$Problems;

    invoke-virtual {v2}, Lcom/sleepycat/json_simple/JsonException$Problems;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, ". Fix the parsable string and try again."

    const-string v3, ") was found at position "

    packed-switch v1, :pswitch_data_0

    .line 74
    const-string v1, "Please report this to the library\'s maintainer. An error at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/json_simple/JsonException;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " occurred. There are no recovery recommendations available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 71
    :pswitch_0
    const-string v1, "Please report this to the library\'s maintainer. The unexpected exception that should be addressed before trying again occurred at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/json_simple/JsonException;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/json_simple/JsonException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    goto :goto_0

    .line 68
    :pswitch_1
    const-string v1, "The unexpected token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sleepycat/json_simple/JsonException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " was found at position "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sleepycat/json_simple/JsonException;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    goto :goto_0

    .line 65
    :pswitch_2
    const-string v1, "The unexpected character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sleepycat/json_simple/JsonException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sleepycat/json_simple/JsonException;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    goto :goto_0

    .line 62
    :pswitch_3
    const-string v1, "An IOException was encountered, ensure the reader is properly instantiated, isn\'t closed, or that it is ready before trying again.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/json_simple/JsonException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    goto :goto_0

    .line 59
    :pswitch_4
    const-string v1, "The disallowed token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/json_simple/JsonException;->unexpectedObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/json_simple/JsonException;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". If this is in error, try again with a deserialization method in Jsoner that allows the token instead. Otherwise, fix the parsable string and try again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    nop

    .line 77
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPosition()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/sleepycat/json_simple/JsonException;->position:I

    return v0
.end method

.method public getProblemType()Lcom/sleepycat/json_simple/JsonException$Problems;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/sleepycat/json_simple/JsonException;->problemType:Lcom/sleepycat/json_simple/JsonException$Problems;

    return-object v0
.end method

.method public getUnexpectedObject()Ljava/lang/Object;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sleepycat/json_simple/JsonException;->unexpectedObject:Ljava/lang/Object;

    return-object v0
.end method
