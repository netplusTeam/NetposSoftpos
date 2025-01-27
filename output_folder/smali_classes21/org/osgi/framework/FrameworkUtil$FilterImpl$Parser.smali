.class final Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;
.super Ljava/lang/Object;
.source "FrameworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osgi/framework/FrameworkUtil$FilterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Parser"
.end annotation


# instance fields
.field private final filterChars:[C

.field private final filterstring:Ljava/lang/String;

.field private pos:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filterstring"    # Ljava/lang/String;

    .line 1276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1277
    iput-object p1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    .line 1278
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    .line 1279
    const/4 v0, 0x0

    iput v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1280
    return-void
.end method

.method private parse_and()Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation

    .line 1344
    iget v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1345
    .local v0, "lookahead":I
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->skipWhiteSpace()V

    .line 1347
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    iget v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    .line 1348
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1349
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_item()Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    move-result-object v1

    return-object v1

    .line 1352
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1354
    .local v1, "operands":Ljava/util/List;, "Ljava/util/List<Lorg/osgi/framework/FrameworkUtil$FilterImpl;>;"
    :goto_0
    iget-object v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    iget v4, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    aget-char v3, v3, v4

    if-ne v3, v2, :cond_1

    .line 1355
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_filter()Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    move-result-object v3

    .line 1356
    .local v3, "child":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1357
    .end local v3    # "child":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    goto :goto_0

    .line 1359
    :cond_1
    new-instance v2, Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method private parse_attr()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation

    .line 1447
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->skipWhiteSpace()V

    .line 1449
    iget v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1450
    .local v0, "begin":I
    iget v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1452
    .local v1, "end":I
    iget-object v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    iget v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    aget-char v2, v2, v3

    .line 1454
    .local v2, "c":C
    :goto_0
    const/16 v3, 0x7e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x28

    if-eq v2, v3, :cond_1

    const/16 v3, 0x29

    if-eq v2, v3, :cond_1

    .line 1455
    iget v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1457
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1458
    iget v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1461
    :cond_0
    iget-object v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    iget v4, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    aget-char v2, v3, v4

    goto :goto_0

    .line 1464
    :cond_1
    sub-int v3, v1, v0

    .line 1466
    .local v3, "length":I
    if-eqz v3, :cond_2

    .line 1470
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    invoke-direct {v4, v5, v0, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .line 1467
    :cond_2
    new-instance v4, Lorg/osgi/framework/InvalidSyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing attr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    iget v7, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/osgi/framework/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method private parse_filter()Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation

    .line 1298
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->skipWhiteSpace()V

    .line 1300
    iget-object v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    iget v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    aget-char v0, v0, v1

    const/16 v2, 0x28

    if-ne v0, v2, :cond_1

    .line 1304
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1306
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_filtercomp()Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    move-result-object v0

    .line 1308
    .local v0, "filter":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->skipWhiteSpace()V

    .line 1310
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    iget v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    aget-char v1, v1, v2

    const/16 v3, 0x29

    if-ne v1, v3, :cond_0

    .line 1314
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1316
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->skipWhiteSpace()V

    .line 1318
    return-object v0

    .line 1311
    :cond_0
    new-instance v1, Lorg/osgi/framework/InvalidSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing \')\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    iget v4, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/osgi/framework/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1301
    .end local v0    # "filter":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    :cond_1
    new-instance v0, Lorg/osgi/framework/InvalidSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing \'(\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    iget v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/osgi/framework/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private parse_filtercomp()Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation

    .line 1322
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->skipWhiteSpace()V

    .line 1324
    iget-object v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    iget v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    aget-char v0, v0, v1

    .line 1326
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1340
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_item()Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    move-result-object v1

    return-object v1

    .line 1332
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1333
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_or()Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    move-result-object v1

    return-object v1

    .line 1328
    :sswitch_1
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1329
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_and()Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    move-result-object v1

    return-object v1

    .line 1336
    :sswitch_2
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1337
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_not()Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_2
        0x26 -> :sswitch_1
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method private parse_item()Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation

    .line 1396
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_attr()Ljava/lang/String;

    move-result-object v0

    .line 1398
    .local v0, "attr":Ljava/lang/String;
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->skipWhiteSpace()V

    .line 1400
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    iget v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    aget-char v3, v1, v2

    const/16 v4, 0x3d

    const/4 v5, 0x2

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 1402
    :sswitch_0
    add-int/lit8 v3, v2, 0x1

    aget-char v1, v1, v3

    if-ne v1, v4, :cond_3

    .line 1403
    add-int/2addr v2, v5

    iput v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1404
    new-instance v1, Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v5, v0, v2}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 1409
    :sswitch_1
    add-int/lit8 v3, v2, 0x1

    aget-char v1, v1, v3

    if-ne v1, v4, :cond_3

    .line 1410
    add-int/2addr v2, v5

    iput v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1411
    new-instance v1, Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    const/4 v2, 0x3

    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 1423
    :sswitch_2
    add-int/lit8 v3, v2, 0x1

    aget-char v1, v1, v3

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_1

    .line 1424
    iget v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1425
    .local v1, "oldpos":I
    add-int/2addr v2, v5

    iput v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1426
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->skipWhiteSpace()V

    .line 1427
    iget-object v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    iget v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    aget-char v2, v2, v3

    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    .line 1428
    new-instance v2, Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v2

    .line 1430
    :cond_0
    iput v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1433
    .end local v1    # "oldpos":I
    :cond_1
    iget v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1434
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_substring()Ljava/lang/Object;

    move-result-object v1

    .line 1436
    .local v1, "string":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1437
    new-instance v3, Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    invoke-direct {v3, v2, v0, v1}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 1439
    :cond_2
    new-instance v2, Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v0, v1}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v2

    .line 1416
    .end local v1    # "string":Ljava/lang/Object;
    :sswitch_3
    add-int/lit8 v3, v2, 0x1

    aget-char v1, v1, v3

    if-ne v1, v4, :cond_3

    .line 1417
    add-int/2addr v2, v5

    iput v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1418
    new-instance v1, Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    const/4 v2, 0x4

    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 1443
    :cond_3
    :goto_0
    new-instance v1, Lorg/osgi/framework/InvalidSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid operator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    iget v4, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/osgi/framework/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_3
        0x3d -> :sswitch_2
        0x3e -> :sswitch_1
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method private parse_not()Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation

    .line 1382
    iget v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1383
    .local v0, "lookahead":I
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->skipWhiteSpace()V

    .line 1385
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    iget v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    .line 1386
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1387
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_item()Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    move-result-object v1

    return-object v1

    .line 1390
    :cond_0
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_filter()Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    move-result-object v1

    .line 1392
    .local v1, "child":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    new-instance v2, Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method private parse_or()Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation

    .line 1363
    iget v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1364
    .local v0, "lookahead":I
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->skipWhiteSpace()V

    .line 1366
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    iget v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    aget-char v1, v1, v2

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    .line 1367
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1368
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_item()Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    move-result-object v1

    return-object v1

    .line 1371
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1373
    .local v1, "operands":Ljava/util/List;, "Ljava/util/List<Lorg/osgi/framework/FrameworkUtil$FilterImpl;>;"
    :goto_0
    iget-object v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    iget v4, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    aget-char v3, v3, v4

    if-ne v3, v2, :cond_1

    .line 1374
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_filter()Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    move-result-object v3

    .line 1375
    .local v3, "child":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1376
    .end local v3    # "child":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    goto :goto_0

    .line 1378
    :cond_1
    new-instance v2, Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/osgi/framework/FrameworkUtil$FilterImpl;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method

.method private parse_substring()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation

    .line 1510
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    array-length v1, v1

    iget v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1512
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1515
    .local v1, "operands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    iget-object v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    iget v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    aget-char v4, v2, v3

    .line 1517
    .local v4, "c":C
    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 1544
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1545
    aget-char v4, v2, v3

    goto :goto_1

    .line 1531
    :sswitch_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1532
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1535
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1537
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1538
    iget v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    add-int/2addr v2, v6

    iput v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1540
    goto :goto_2

    .line 1519
    :sswitch_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1520
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1557
    .end local v4    # "c":C
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1559
    .local v2, "size":I
    if-nez v2, :cond_2

    .line 1560
    const-string v3, ""

    return-object v3

    .line 1563
    :cond_2
    if-ne v2, v6, :cond_3

    .line 1564
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1566
    .local v3, "single":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 1567
    return-object v3

    .line 1571
    .end local v3    # "single":Ljava/lang/Object;
    :cond_3
    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 1527
    .end local v2    # "size":I
    .restart local v4    # "c":C
    :sswitch_3
    new-instance v2, Lorg/osgi/framework/InvalidSyntaxException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    iget v6, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Lorg/osgi/framework/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 1550
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1551
    iget v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    add-int/2addr v2, v6

    iput v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1555
    .end local v4    # "c":C
    :goto_2
    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_3
        0x29 -> :sswitch_2
        0x2a -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private parse_value()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation

    .line 1474
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    array-length v1, v1

    iget v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1477
    .local v0, "sb":Ljava/lang/StringBuffer;
    :goto_0
    iget-object v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    iget v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    aget-char v3, v1, v2

    .line 1479
    .local v3, "c":C
    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 1489
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1490
    aget-char v3, v1, v2

    goto :goto_1

    .line 1481
    :sswitch_1
    nop

    .line 1502
    .end local v3    # "c":C
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1506
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1503
    :cond_0
    new-instance v1, Lorg/osgi/framework/InvalidSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    iget v4, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/osgi/framework/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1485
    .restart local v3    # "c":C
    :sswitch_2
    new-instance v1, Lorg/osgi/framework/InvalidSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    iget v5, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    invoke-direct {v1, v2, v4}, Lorg/osgi/framework/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1495
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1496
    iget v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    .line 1500
    .end local v3    # "c":C
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_2
        0x29 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private skipWhiteSpace()V
    .locals 3

    .line 1575
    iget-object v0, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    array-length v0, v0

    .local v0, "length":I
    :goto_0
    iget v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    aget-char v1, v2, v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1576
    iget v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    goto :goto_0

    .line 1578
    .end local v0    # "length":I
    :cond_0
    return-void
.end method


# virtual methods
.method parse()Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/osgi/framework/InvalidSyntaxException;
        }
    .end annotation

    .line 1285
    :try_start_0
    invoke-direct {p0}, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->parse_filter()Lorg/osgi/framework/FrameworkUtil$FilterImpl;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    .local v0, "filter":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    nop

    .line 1290
    iget v1, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    iget-object v2, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterChars:[C

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 1293
    return-object v0

    .line 1291
    :cond_0
    new-instance v1, Lorg/osgi/framework/InvalidSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extraneous trailing characters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    iget v4, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/osgi/framework/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1286
    .end local v0    # "filter":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 1287
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .local v1, "filter":Lorg/osgi/framework/FrameworkUtil$FilterImpl;
    new-instance v2, Lorg/osgi/framework/InvalidSyntaxException;

    iget-object v3, p0, Lorg/osgi/framework/FrameworkUtil$FilterImpl$Parser;->filterstring:Ljava/lang/String;

    const-string v4, "Filter ended abruptly"

    invoke-direct {v2, v4, v3, v0}, Lorg/osgi/framework/InvalidSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
