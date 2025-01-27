.class public Lcom/dspread/xpos/b1;
.super Ljava/lang/Object;
.source "test.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/b1$a;
    }
.end annotation


# instance fields
.field private a:Lcom/dspread/xpos/Service;

.field private b:Z

.field private c:Lcom/dspread/xpos/b1$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/dspread/xpos/b1$a;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/b1$a;-><init>(Lcom/dspread/xpos/b1;)V

    iput-object v0, p0, Lcom/dspread/xpos/b1;->c:Lcom/dspread/xpos/b1$a;

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "main"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/dspread/xpos/b1;

    invoke-direct {p0}, Lcom/dspread/xpos/b1;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/dspread/xpos/b1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/dspread/xpos/b1;->a()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "fail"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 22
    sget-object v0, Lcom/dspread/xpos/Service$TransactionType;->GOODS:Lcom/dspread/xpos/Service$TransactionType;

    .line 23
    iget-object v1, p0, Lcom/dspread/xpos/b1;->a:Lcom/dspread/xpos/Service;

    const-string v2, "100"

    const-string v3, ""

    const-string v4, "156"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/dspread/xpos/Service;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dspread/xpos/Service$TransactionType;)V

    .line 24
    iget-object v0, p0, Lcom/dspread/xpos/b1;->a:Lcom/dspread/xpos/Service;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/Service;->a(I)Z

    move-result v0

    .line 25
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Z)V

    return-void
.end method

.method public a(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .line 8
    move-object v1, p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "getpin"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9
    iget-object v0, v1, Lcom/dspread/xpos/b1;->a:Lcom/dspread/xpos/Service;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/dspread/xpos/Service;

    invoke-direct {v0}, Lcom/dspread/xpos/Service;-><init>()V

    iput-object v0, v1, Lcom/dspread/xpos/b1;->a:Lcom/dspread/xpos/Service;

    .line 13
    :cond_0
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "begin get"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    iget-object v3, v1, Lcom/dspread/xpos/b1;->a:Lcom/dspread/xpos/Service;

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/dspread/xpos/Service;->a(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "success"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "fail"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "begin fail"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/b1;->a:Lcom/dspread/xpos/Service;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/Service;

    invoke-direct {v0}, Lcom/dspread/xpos/Service;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/b1;->a:Lcom/dspread/xpos/Service;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/b1;->a:Lcom/dspread/xpos/Service;

    iget-object v1, p0, Lcom/dspread/xpos/b1;->c:Lcom/dspread/xpos/b1$a;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/Service;->a(Lcom/dspread/xpos/Service$c;)V

    .line 5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "open"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/b1;->a:Lcom/dspread/xpos/Service;

    const-string v1, "COM4"

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/Service;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
