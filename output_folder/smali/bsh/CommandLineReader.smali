.class Lbsh/CommandLineReader;
.super Ljava/io/FilterReader;
.source "CommandLineReader.java"


# static fields
.field static final lastCharNL:I = 0x1

.field static final normal:I = 0x0

.field static final sentSemi:I = 0x2


# instance fields
.field state:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;

    .line 44
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lbsh/CommandLineReader;->state:I

    .line 45
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    new-instance v0, Lbsh/CommandLineReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lbsh/CommandLineReader;-><init>(Ljava/io/Reader;)V

    .line 97
    .local v0, "in":Ljava/io/Reader;
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(I)V

    goto :goto_0
.end method


# virtual methods
.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget v0, p0, Lbsh/CommandLineReader;->state:I

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 58
    iput v3, p0, Lbsh/CommandLineReader;->state:I

    .line 59
    return v1

    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lbsh/CommandLineReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    move v4, v0

    .local v4, "b":I
    const/16 v5, 0xd

    if-ne v0, v5, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    if-ne v4, v1, :cond_3

    .line 66
    iget v0, p0, Lbsh/CommandLineReader;->state:I

    if-ne v0, v3, :cond_2

    .line 67
    const/16 v4, 0x3b

    .line 68
    iput v2, p0, Lbsh/CommandLineReader;->state:I

    goto :goto_1

    .line 70
    :cond_2
    iput v3, p0, Lbsh/CommandLineReader;->state:I

    goto :goto_1

    .line 72
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lbsh/CommandLineReader;->state:I

    .line 74
    :goto_1
    return v4
.end method

.method public read([CII)I
    .locals 2
    .param p1, "buff"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lbsh/CommandLineReader;->read()I

    move-result v0

    .line 85
    .local v0, "b":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 86
    return v1

    .line 88
    :cond_0
    int-to-char v1, v0

    aput-char v1, p1, p2

    .line 89
    const/4 v1, 0x1

    return v1
.end method
