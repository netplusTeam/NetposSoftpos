.class public Lcom/dspread/xpos/utils/h;
.super Ljava/lang/Object;
.source "TLVParser.java"


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dspread/xpos/utils/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/dspread/xpos/utils/h;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit8 v2, v1, -0x80

    const/16 v3, -0x80

    if-ne v2, v3, :cond_1

    and-int/lit8 v1, v1, 0x7f

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    add-int/lit8 v4, v1, 0x1

    if-ge v3, v4, :cond_0

    shl-int/lit8 v0, v0, 0x8

    .line 6
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    and-int/lit16 p0, v1, 0xff

    return p0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Lcom/dspread/xpos/utils/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dspread/xpos/utils/g;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dspread/xpos/utils/g;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 8
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dspread/xpos/utils/g;

    .line 9
    iget-object v2, v1, Lcom/dspread/xpos/utils/g;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 11
    :cond_0
    iget-boolean v2, v1, Lcom/dspread/xpos/utils/g;->d:Z

    if-eqz v2, :cond_1

    .line 12
    iget-object v1, v1, Lcom/dspread/xpos/utils/g;->e:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/dspread/xpos/utils/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/dspread/xpos/utils/g;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 3

    .line 13
    const-string p0, "5F20114F47554E4C4559452F544F4C554C4F50454F07A00000000410105F24032206309F160F4243544553543132333435363738009F21030944229A032008319F02060000000000859F03060000000000009F34034203019F12104465626974204D6173746572436172649F0607A00000000410109F4E0F616263640000000000000000000000C408539983FFFFFF9124C10A00119112000765E00014C708DD94488BD3B70449C00A00119112000765E0001AC28201B0092CDE89AD2755FC0D9D027FD4192597F307EB2B6BFD18696A5F5E39D83036243777B09F9C1ACCA3C663AC8426B2B40DC33D60FB2D86FCA93BA2984C9B93E816328DB111CF6144A1B910D8657EB2148D99C9DE7AC96D6E6BC1012AE17FC525E3C6169C4B514BB6395451D1F2D8C0E240383726047E2FC3D913338A9B2330E39B02DA45AAF1B5850487A1FE58ED0BB839B3FEFB80A7173E8D2A4A47FCA664B86BE9A4428762576F2C5B8AB1BD77385E69F3CDC67427BDA4E8666B7C3E983A123848131C7B355B12EFFFF84E27983BFEEC9FC4FDE0A67983AA1DB92BC7EBCC3B4CE0EE04B729CF680A50AB03132557E4C074205D1A9625A442DFDCF6835EBC0C32631ABDA08537076F1B83C37D4310BAE9773A0EFFC2885B4FBA9696AC50C8362A4882ECA6560804255934EBBE60FA4C6DCD0478FF53CACF49E54FCA40627753263FF3D49FB942A19A9B578A979655C333D7E88FAA32868F8D1010CDD626727E880BCD0B36A49C19A934F62334E05DA33803E0C8CEC4E0449E337C3771DB40997C63A2DF4316631D5A730210A6AF7E9748EDBF078D7AD3EFE6552B974FF6C99A3F6578D29547F805DED4AEDDAEEFAE45B9"

    invoke-static {p0}, Lcom/dspread/xpos/utils/h;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dspread/xpos/utils/g;

    .line 15
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lcom/dspread/xpos/utils/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "C2"

    invoke-static {p0, v0}, Lcom/dspread/xpos/utils/h;->a(Ljava/util/List;Ljava/lang/String;)Lcom/dspread/xpos/utils/g;

    move-result-object p0

    .line 18
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/dspread/xpos/utils/g;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 6

    .line 19
    const-string v0, "9F06"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 21
    :cond_0
    const-string v0, "00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 23
    :cond_1
    invoke-static {p0}, Lcom/dspread/xpos/utils/h;->b(Ljava/lang/String;)[B

    move-result-object p0

    .line 28
    aget-byte v0, p0, v2

    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    return v2

    :cond_2
    and-int/lit8 v3, v0, 0x1f

    const/16 v4, 0x1f

    const/16 v5, -0x80

    if-ne v3, v4, :cond_4

    move v0, v1

    .line 34
    :goto_0
    aget-byte v3, p0, v0

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 38
    array-length v3, p0

    if-lt v0, v3, :cond_6

    return v2

    :cond_4
    if-nez v0, :cond_5

    return v2

    :cond_5
    move v0, v1

    .line 48
    :cond_6
    aget-byte v3, p0, v0

    and-int/lit8 v4, v3, -0x80

    if-ne v4, v5, :cond_7

    and-int/lit8 v3, v3, 0x7f

    add-int/2addr v3, v1

    .line 50
    new-array v4, v3, [B

    add-int/2addr v0, v3

    goto :goto_1

    :cond_7
    nop

    .line 53
    new-array v4, v1, [B

    .line 54
    aput-byte v3, v4, v2

    add-int/2addr v0, v1

    .line 58
    :goto_1
    invoke-static {v4}, Lcom/dspread/xpos/utils/h;->a([B)I

    move-result v3

    add-int/2addr v3, v0

    .line 59
    array-length p0, p0

    if-le v3, p0, :cond_8

    return v2

    :cond_8
    return v1
.end method

.method private static b([B)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/dspread/xpos/utils/g;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_6

    .line 5
    aget-byte v2, p0, v1

    and-int/lit8 v3, v2, 0x20

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    and-int/lit8 v4, v2, 0x1f

    const/16 v6, 0x1f

    const/16 v7, -0x80

    if-ne v4, v6, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 14
    :goto_2
    aget-byte v4, p0, v2

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    sub-int/2addr v2, v1

    add-int/2addr v2, v5

    .line 17
    new-array v4, v2, [B

    .line 18
    invoke-static {p0, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    goto :goto_3

    :cond_2
    nop

    .line 21
    new-array v4, v5, [B

    .line 22
    aput-byte v2, v4, v0

    add-int/lit8 v1, v1, 0x1

    if-nez v2, :cond_3

    goto :goto_5

    .line 30
    :cond_3
    :goto_3
    aget-byte v2, p0, v1

    and-int/lit8 v6, v2, -0x80

    if-ne v6, v7, :cond_4

    and-int/lit8 v2, v2, 0x7f

    add-int/2addr v2, v5

    .line 32
    new-array v5, v2, [B

    .line 33
    invoke-static {p0, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    goto :goto_4

    :cond_4
    nop

    .line 36
    new-array v5, v5, [B

    .line 37
    aput-byte v2, v5, v0

    add-int/lit8 v1, v1, 0x1

    .line 41
    :goto_4
    invoke-static {v5}, Lcom/dspread/xpos/utils/h;->a([B)I

    move-result v2

    .line 42
    new-array v6, v2, [B

    .line 43
    invoke-static {p0, v1, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    if-eqz v3, :cond_5

    .line 46
    invoke-static {v6}, Lcom/dspread/xpos/utils/h;->b([B)Ljava/util/List;

    goto :goto_0

    .line 48
    :cond_5
    new-instance v2, Lcom/dspread/xpos/utils/g;

    invoke-direct {v2}, Lcom/dspread/xpos/utils/g;-><init>()V

    .line 49
    invoke-static {v4}, Lcom/dspread/xpos/utils/h;->d([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/dspread/xpos/utils/g;->a:Ljava/lang/String;

    .line 50
    invoke-static {v5}, Lcom/dspread/xpos/utils/h;->d([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/dspread/xpos/utils/g;->b:Ljava/lang/String;

    .line 51
    invoke-static {v6}, Lcom/dspread/xpos/utils/h;->d([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/dspread/xpos/utils/g;->c:Ljava/lang/String;

    .line 52
    iput-boolean v3, v2, Lcom/dspread/xpos/utils/g;->d:Z

    .line 53
    sget-object v3, Lcom/dspread/xpos/utils/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_6
    :goto_5
    sget-object p0, Lcom/dspread/xpos/utils/h;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 6

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 60
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 61
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v2, v2, 0x2

    .line 62
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/2addr v4, v5

    add-int/2addr v4, v2

    int-to-byte v2, v4

    .line 64
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dspread/xpos/utils/g;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/dspread/xpos/utils/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-static {p0}, Lcom/dspread/xpos/utils/h;->b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/dspread/xpos/utils/h;->b([B)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    sget-object p0, Lcom/dspread/xpos/utils/h;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    .line 5
    sget-object p0, Lcom/dspread/xpos/utils/h;->a:Ljava/util/ArrayList;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c([B)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/dspread/xpos/utils/g;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 8
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 14
    aget-byte v3, p0, v2

    and-int/lit8 v4, v3, 0x20

    const/16 v5, 0x20

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    and-int/lit8 v5, v3, 0x1f

    const/16 v7, 0x1f

    const/16 v8, -0x80

    if-ne v5, v7, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 22
    :goto_2
    aget-byte v5, p0, v3

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    sub-int/2addr v3, v2

    add-int/2addr v3, v6

    .line 25
    new-array v5, v3, [B

    .line 26
    invoke-static {p0, v2, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    goto :goto_3

    :cond_2
    nop

    .line 29
    new-array v5, v6, [B

    .line 30
    aput-byte v3, v5, v1

    add-int/lit8 v2, v2, 0x1

    if-nez v3, :cond_3

    goto :goto_5

    .line 38
    :cond_3
    :goto_3
    aget-byte v3, p0, v2

    and-int/lit8 v7, v3, -0x80

    if-ne v7, v8, :cond_4

    and-int/lit8 v3, v3, 0x7f

    add-int/2addr v3, v6

    .line 40
    new-array v6, v3, [B

    .line 41
    invoke-static {p0, v2, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    goto :goto_4

    :cond_4
    nop

    .line 44
    new-array v6, v6, [B

    .line 45
    aput-byte v3, v6, v1

    add-int/lit8 v2, v2, 0x1

    .line 49
    :goto_4
    new-instance v3, Lcom/dspread/xpos/utils/g;

    invoke-direct {v3}, Lcom/dspread/xpos/utils/g;-><init>()V

    .line 50
    invoke-static {v5}, Lcom/dspread/xpos/utils/h;->d([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/dspread/xpos/utils/g;->a:Ljava/lang/String;

    .line 51
    invoke-static {v6}, Lcom/dspread/xpos/utils/h;->d([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/dspread/xpos/utils/g;->b:Ljava/lang/String;

    .line 52
    iput-boolean v4, v3, Lcom/dspread/xpos/utils/g;->d:Z

    .line 54
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    :goto_5
    return-object v0
.end method

.method protected static d([B)Ljava/lang/String;
    .locals 4

    .line 2
    const-string v0, ""

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dspread/xpos/utils/g;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/dspread/xpos/utils/h;->b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/dspread/xpos/utils/h;->c([B)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method
