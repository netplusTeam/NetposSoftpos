.class public Lcom/dspread/august/common/wbaes/AES;
.super Ljava/lang/Object;
.source "AES.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final BYTES:I = 0x10

.field private static final ROUNDS:I = 0xa

.field private static final T1BOXES:I = 0x2

.field private static final T1Boxes:I = 0x2

.field private static final serialVersionUID:J = -0x6a76faf2218477c2L

.field private static final shiftRows:[I

.field private static final shiftRowsInv:[I


# instance fields
.field public encrypt:Z

.field public t1:[[Lcom/dspread/august/common/wbaes/T1Box;

.field public t2:[[Lcom/dspread/august/common/wbaes/T2Box;

.field public t3:[[Lcom/dspread/august/common/wbaes/T3Box;

.field public xor:[[Lcom/dspread/august/common/wbaes/XORCascade;

.field public xorState:[Lcom/dspread/august/common/wbaes/XORCascadeState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/dspread/august/common/wbaes/AES;->shiftRows:[I

    .line 8
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/dspread/august/common/wbaes/AES;->shiftRowsInv:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x5
        0x6
        0x7
        0x4
        0xa
        0xb
        0x8
        0x9
        0xf
        0xc
        0xd
        0xe
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x7
        0x4
        0x5
        0x6
        0xa
        0xb
        0x8
        0x9
        0xd
        0xe
        0xf
        0xc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const-class v2, Lcom/dspread/august/common/wbaes/T1Box;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/dspread/august/common/wbaes/T1Box;

    iput-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->t1:[[Lcom/dspread/august/common/wbaes/T1Box;

    .line 22
    new-array v1, v0, [Lcom/dspread/august/common/wbaes/XORCascadeState;

    iput-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->xorState:[Lcom/dspread/august/common/wbaes/XORCascadeState;

    .line 23
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    const-class v2, Lcom/dspread/august/common/wbaes/T2Box;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/dspread/august/common/wbaes/T2Box;

    iput-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->t2:[[Lcom/dspread/august/common/wbaes/T2Box;

    .line 24
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    const-class v2, Lcom/dspread/august/common/wbaes/T3Box;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/dspread/august/common/wbaes/T3Box;

    iput-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->t3:[[Lcom/dspread/august/common/wbaes/T3Box;

    .line 25
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    const-class v1, Lcom/dspread/august/common/wbaes/XORCascade;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/dspread/august/common/wbaes/XORCascade;

    iput-object v0, p0, Lcom/dspread/august/common/wbaes/AES;->xor:[[Lcom/dspread/august/common/wbaes/XORCascade;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/august/common/wbaes/AES;->encrypt:Z

    return-void

    :array_0
    .array-data 4
        0x2
        0x10
    .end array-data

    :array_1
    .array-data 4
        0xa
        0x10
    .end array-data

    :array_2
    .array-data 4
        0xa
        0x10
    .end array-data

    :array_3
    .array-data 4
        0xa
        0x8
    .end array-data
.end method

.method private static getShift(Z)[I
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lcom/dspread/august/common/wbaes/AES;->shiftRows:[I

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/dspread/august/common/wbaes/AES;->shiftRowsInv:[I

    :goto_0
    return-object p0
.end method

.method private getT1()[[Lcom/dspread/august/common/wbaes/T1Box;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/AES;->t1:[[Lcom/dspread/august/common/wbaes/T1Box;

    return-object v0
.end method

.method private getT2()[[Lcom/dspread/august/common/wbaes/T2Box;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/AES;->t2:[[Lcom/dspread/august/common/wbaes/T2Box;

    return-object v0
.end method

.method private getT3()[[Lcom/dspread/august/common/wbaes/T3Box;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/AES;->t3:[[Lcom/dspread/august/common/wbaes/T3Box;

    return-object v0
.end method

.method private getXor()[[Lcom/dspread/august/common/wbaes/XORCascade;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/AES;->xor:[[Lcom/dspread/august/common/wbaes/XORCascade;

    return-object v0
.end method

.method private getXorState()[Lcom/dspread/august/common/wbaes/XORCascadeState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/AES;->xorState:[Lcom/dspread/august/common/wbaes/XORCascadeState;

    return-object v0
.end method

.method private init()V
    .locals 6

    .line 1
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const-class v2, Lcom/dspread/august/common/wbaes/T1Box;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/dspread/august/common/wbaes/T1Box;

    iput-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->t1:[[Lcom/dspread/august/common/wbaes/T1Box;

    .line 2
    new-array v1, v0, [Lcom/dspread/august/common/wbaes/XORCascadeState;

    iput-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->xorState:[Lcom/dspread/august/common/wbaes/XORCascadeState;

    .line 3
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    const-class v2, Lcom/dspread/august/common/wbaes/T2Box;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/dspread/august/common/wbaes/T2Box;

    iput-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->t2:[[Lcom/dspread/august/common/wbaes/T2Box;

    .line 4
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    const-class v2, Lcom/dspread/august/common/wbaes/T3Box;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/dspread/august/common/wbaes/T3Box;

    iput-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->t3:[[Lcom/dspread/august/common/wbaes/T3Box;

    .line 5
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    const-class v2, Lcom/dspread/august/common/wbaes/XORCascade;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/dspread/august/common/wbaes/XORCascade;

    iput-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->xor:[[Lcom/dspread/august/common/wbaes/XORCascade;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_4

    if-ge v2, v0, :cond_0

    .line 13
    iget-object v3, p0, Lcom/dspread/august/common/wbaes/AES;->xorState:[Lcom/dspread/august/common/wbaes/XORCascadeState;

    new-instance v4, Lcom/dspread/august/common/wbaes/XORCascadeState;

    invoke-direct {v4}, Lcom/dspread/august/common/wbaes/XORCascadeState;-><init>()V

    aput-object v4, v3, v2

    :cond_0
    move v3, v1

    :goto_1
    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    if-ge v2, v0, :cond_1

    .line 23
    iget-object v4, p0, Lcom/dspread/august/common/wbaes/AES;->t1:[[Lcom/dspread/august/common/wbaes/T1Box;

    aget-object v4, v4, v2

    new-instance v5, Lcom/dspread/august/common/wbaes/T1Box;

    invoke-direct {v5}, Lcom/dspread/august/common/wbaes/T1Box;-><init>()V

    aput-object v5, v4, v3

    .line 30
    :cond_1
    iget-object v4, p0, Lcom/dspread/august/common/wbaes/AES;->t2:[[Lcom/dspread/august/common/wbaes/T2Box;

    aget-object v4, v4, v2

    new-instance v5, Lcom/dspread/august/common/wbaes/T2Box;

    invoke-direct {v5}, Lcom/dspread/august/common/wbaes/T2Box;-><init>()V

    aput-object v5, v4, v3

    .line 31
    iget-object v4, p0, Lcom/dspread/august/common/wbaes/AES;->t3:[[Lcom/dspread/august/common/wbaes/T3Box;

    aget-object v4, v4, v2

    new-instance v5, Lcom/dspread/august/common/wbaes/T3Box;

    invoke-direct {v5}, Lcom/dspread/august/common/wbaes/T3Box;-><init>()V

    aput-object v5, v4, v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    .line 38
    iget-object v4, p0, Lcom/dspread/august/common/wbaes/AES;->xor:[[Lcom/dspread/august/common/wbaes/XORCascade;

    aget-object v4, v4, v2

    new-instance v5, Lcom/dspread/august/common/wbaes/XORCascade;

    invoke-direct {v5}, Lcom/dspread/august/common/wbaes/XORCascade;-><init>()V

    aput-object v5, v4, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x2
        0x10
    .end array-data

    :array_1
    .array-data 4
        0xa
        0x10
    .end array-data

    :array_2
    .array-data 4
        0xa
        0x10
    .end array-data

    :array_3
    .array-data 4
        0xa
        0x8
    .end array-data
.end method

.method private isEncrypt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/august/common/wbaes/AES;->encrypt:Z

    return v0
.end method

.method public static posIdx(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static posIdx(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private setEncrypt(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/august/common/wbaes/AES;->encrypt:Z

    return-void
.end method

.method private shift(I)I
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/dspread/august/common/wbaes/AES;->encrypt:Z

    invoke-static {v0}, Lcom/dspread/august/common/wbaes/AES;->getShift(Z)[I

    move-result-object v0

    aget p1, v0, p1

    return p1
.end method

.method private static shift(IZ)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dspread/august/common/wbaes/AES;->getShift(Z)[I

    move-result-object p1

    aget p0, p1, p0

    return p0
.end method


# virtual methods
.method public crypt(Lcom/dspread/august/common/wbaes/State;)Lcom/dspread/august/common/wbaes/State;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x10

    new-array v3, v2, [Lcom/dspread/august/common/wbaes/W32b;

    .line 3
    new-array v4, v2, [Lcom/dspread/august/common/wbaes/State;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_0

    .line 8
    new-instance v7, Lcom/dspread/august/common/wbaes/W32b;

    invoke-direct {v7}, Lcom/dspread/august/common/wbaes/W32b;-><init>()V

    aput-object v7, v3, v6

    .line 9
    new-instance v7, Lcom/dspread/august/common/wbaes/State;

    invoke-direct {v7}, Lcom/dspread/august/common/wbaes/State;-><init>()V

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_1
    if-ge v6, v2, :cond_1

    .line 19
    aget-object v7, v4, v6

    iget-object v8, v0, Lcom/dspread/august/common/wbaes/AES;->t1:[[Lcom/dspread/august/common/wbaes/T1Box;

    aget-object v8, v8, v5

    aget-object v8, v8, v6

    invoke-virtual {v1, v6}, Lcom/dspread/august/common/wbaes/State;->get(I)B

    move-result v9

    invoke-virtual {v8, v9}, Lcom/dspread/august/common/wbaes/TBox8to128;->lookup(B)Lcom/dspread/august/common/wbaes/State;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/dspread/august/common/wbaes/State;->loadFrom(Lcom/dspread/august/common/wbaes/State;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 24
    :cond_1
    iget-object v6, v0, Lcom/dspread/august/common/wbaes/AES;->xorState:[Lcom/dspread/august/common/wbaes/XORCascadeState;

    aget-object v6, v6, v5

    invoke-virtual {v6, v4}, Lcom/dspread/august/common/wbaes/XORCascadeState;->xor([Lcom/dspread/august/common/wbaes/State;)Lcom/dspread/august/common/wbaes/State;

    .line 25
    aget-object v6, v4, v5

    invoke-virtual {v1, v6}, Lcom/dspread/august/common/wbaes/State;->loadFrom(Lcom/dspread/august/common/wbaes/State;)V

    move v6, v5

    :goto_2
    const/16 v7, 0x9

    const/4 v8, 0x1

    if-ge v6, v7, :cond_4

    move v7, v5

    :goto_3
    if-ge v7, v2, :cond_2

    .line 38
    aget-object v9, v3, v7

    iget-object v10, v0, Lcom/dspread/august/common/wbaes/AES;->t2:[[Lcom/dspread/august/common/wbaes/T2Box;

    aget-object v10, v10, v6

    aget-object v10, v10, v7

    invoke-direct {v0, v7}, Lcom/dspread/august/common/wbaes/AES;->shift(I)I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/dspread/august/common/wbaes/State;->get(I)B

    move-result v11

    invoke-virtual {v10, v11}, Lcom/dspread/august/common/wbaes/TBox8to32;->lookup(B)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/dspread/august/common/wbaes/W32b;->set(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    move v7, v5

    :goto_4
    const/4 v9, 0x4

    if-ge v7, v9, :cond_3

    .line 46
    aget-object v9, v3, v7

    iget-object v10, v0, Lcom/dspread/august/common/wbaes/AES;->xor:[[Lcom/dspread/august/common/wbaes/XORCascade;

    aget-object v10, v10, v6

    mul-int/lit8 v11, v7, 0x2

    aget-object v12, v10, v11

    add-int/lit8 v10, v7, 0x0

    aget-object v13, v3, v10

    .line 47
    invoke-virtual {v13}, Lcom/dspread/august/common/wbaes/W32b;->getLong()J

    move-result-wide v13

    add-int/lit8 v21, v7, 0x4

    aget-object v15, v3, v21

    .line 48
    invoke-virtual {v15}, Lcom/dspread/august/common/wbaes/W32b;->getLong()J

    move-result-wide v15

    add-int/lit8 v22, v7, 0x8

    aget-object v17, v3, v22

    .line 49
    invoke-virtual/range {v17 .. v17}, Lcom/dspread/august/common/wbaes/W32b;->getLong()J

    move-result-wide v17

    add-int/lit8 v23, v7, 0xc

    aget-object v19, v3, v23

    .line 50
    invoke-virtual/range {v19 .. v19}, Lcom/dspread/august/common/wbaes/W32b;->getLong()J

    move-result-wide v19

    .line 51
    invoke-virtual/range {v12 .. v20}, Lcom/dspread/august/common/wbaes/XORCascade;->xor(JJJJ)J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lcom/dspread/august/common/wbaes/W32b;->set(J)V

    .line 61
    aget-object v9, v3, v7

    invoke-virtual {v9}, Lcom/dspread/august/common/wbaes/W32b;->get()[B

    move-result-object v9

    .line 62
    aget-object v12, v3, v23

    iget-object v13, v0, Lcom/dspread/august/common/wbaes/AES;->t3:[[Lcom/dspread/august/common/wbaes/T3Box;

    aget-object v13, v13, v6

    aget-object v13, v13, v23

    const/4 v14, 0x3

    aget-byte v14, v9, v14

    invoke-virtual {v13, v14}, Lcom/dspread/august/common/wbaes/TBox8to32;->lookup(B)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/dspread/august/common/wbaes/W32b;->set(J)V

    .line 63
    aget-object v12, v3, v22

    iget-object v13, v0, Lcom/dspread/august/common/wbaes/AES;->t3:[[Lcom/dspread/august/common/wbaes/T3Box;

    aget-object v13, v13, v6

    aget-object v13, v13, v22

    const/4 v14, 0x2

    aget-byte v14, v9, v14

    invoke-virtual {v13, v14}, Lcom/dspread/august/common/wbaes/TBox8to32;->lookup(B)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/dspread/august/common/wbaes/W32b;->set(J)V

    .line 64
    aget-object v12, v3, v21

    iget-object v13, v0, Lcom/dspread/august/common/wbaes/AES;->t3:[[Lcom/dspread/august/common/wbaes/T3Box;

    aget-object v13, v13, v6

    aget-object v13, v13, v21

    aget-byte v14, v9, v8

    invoke-virtual {v13, v14}, Lcom/dspread/august/common/wbaes/TBox8to32;->lookup(B)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/dspread/august/common/wbaes/W32b;->set(J)V

    .line 65
    aget-object v12, v3, v10

    iget-object v13, v0, Lcom/dspread/august/common/wbaes/AES;->t3:[[Lcom/dspread/august/common/wbaes/T3Box;

    aget-object v13, v13, v6

    aget-object v13, v13, v10

    aget-byte v9, v9, v5

    invoke-virtual {v13, v9}, Lcom/dspread/august/common/wbaes/TBox8to32;->lookup(B)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/dspread/august/common/wbaes/W32b;->set(J)V

    .line 69
    aget-object v9, v3, v7

    iget-object v12, v0, Lcom/dspread/august/common/wbaes/AES;->xor:[[Lcom/dspread/august/common/wbaes/XORCascade;

    aget-object v12, v12, v6

    add-int/2addr v11, v8

    aget-object v24, v12, v11

    aget-object v10, v3, v10

    .line 70
    invoke-virtual {v10}, Lcom/dspread/august/common/wbaes/W32b;->getLong()J

    move-result-wide v25

    aget-object v10, v3, v21

    .line 71
    invoke-virtual {v10}, Lcom/dspread/august/common/wbaes/W32b;->getLong()J

    move-result-wide v27

    aget-object v10, v3, v22

    .line 72
    invoke-virtual {v10}, Lcom/dspread/august/common/wbaes/W32b;->getLong()J

    move-result-wide v29

    aget-object v10, v3, v23

    .line 73
    invoke-virtual {v10}, Lcom/dspread/august/common/wbaes/W32b;->getLong()J

    move-result-wide v31

    .line 74
    invoke-virtual/range {v24 .. v32}, Lcom/dspread/august/common/wbaes/XORCascade;->xor(JJJJ)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/dspread/august/common/wbaes/W32b;->set(J)V

    .line 83
    aget-object v9, v3, v7

    invoke-virtual {v1, v9, v7}, Lcom/dspread/august/common/wbaes/State;->setColumn(Lcom/dspread/august/common/wbaes/W32b;I)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_4
    move v3, v5

    :goto_5
    if-ge v3, v2, :cond_5

    .line 94
    aget-object v6, v4, v3

    iget-object v7, v0, Lcom/dspread/august/common/wbaes/AES;->t1:[[Lcom/dspread/august/common/wbaes/T1Box;

    aget-object v7, v7, v8

    aget-object v7, v7, v3

    invoke-direct {v0, v3}, Lcom/dspread/august/common/wbaes/AES;->shift(I)I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/dspread/august/common/wbaes/State;->get(I)B

    move-result v9

    invoke-virtual {v7, v9}, Lcom/dspread/august/common/wbaes/TBox8to128;->lookup(B)Lcom/dspread/august/common/wbaes/State;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/dspread/august/common/wbaes/State;->loadFrom(Lcom/dspread/august/common/wbaes/State;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 99
    :cond_5
    iget-object v2, v0, Lcom/dspread/august/common/wbaes/AES;->xorState:[Lcom/dspread/august/common/wbaes/XORCascadeState;

    aget-object v2, v2, v8

    invoke-virtual {v2, v4}, Lcom/dspread/august/common/wbaes/XORCascadeState;->xor([Lcom/dspread/august/common/wbaes/State;)Lcom/dspread/august/common/wbaes/State;

    .line 100
    aget-object v2, v4, v5

    invoke-virtual {v1, v2}, Lcom/dspread/august/common/wbaes/State;->loadFrom(Lcom/dspread/august/common/wbaes/State;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 4
    :cond_1
    check-cast p1, Lcom/dspread/august/common/wbaes/AES;

    .line 5
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->t1:[[Lcom/dspread/august/common/wbaes/T1Box;

    iget-object v2, p1, Lcom/dspread/august/common/wbaes/AES;->t1:[[Lcom/dspread/august/common/wbaes/T1Box;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->xorState:[Lcom/dspread/august/common/wbaes/XORCascadeState;

    iget-object v2, p1, Lcom/dspread/august/common/wbaes/AES;->xorState:[Lcom/dspread/august/common/wbaes/XORCascadeState;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->t2:[[Lcom/dspread/august/common/wbaes/T2Box;

    iget-object v2, p1, Lcom/dspread/august/common/wbaes/AES;->t2:[[Lcom/dspread/august/common/wbaes/T2Box;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->t3:[[Lcom/dspread/august/common/wbaes/T3Box;

    iget-object v2, p1, Lcom/dspread/august/common/wbaes/AES;->t3:[[Lcom/dspread/august/common/wbaes/T3Box;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->xor:[[Lcom/dspread/august/common/wbaes/XORCascade;

    iget-object v2, p1, Lcom/dspread/august/common/wbaes/AES;->xor:[[Lcom/dspread/august/common/wbaes/XORCascade;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 20
    :cond_6
    iget-boolean v1, p0, Lcom/dspread/august/common/wbaes/AES;->encrypt:Z

    iget-boolean p1, p1, Lcom/dspread/august/common/wbaes/AES;->encrypt:Z

    if-eq v1, p1, :cond_7

    return v0

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/AES;->t1:[[Lcom/dspread/august/common/wbaes/T1Box;

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x26f

    mul-int/lit8 v0, v0, 0x59

    .line 2
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->xorState:[Lcom/dspread/august/common/wbaes/XORCascadeState;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x59

    .line 3
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->t2:[[Lcom/dspread/august/common/wbaes/T2Box;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x59

    .line 4
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->t3:[[Lcom/dspread/august/common/wbaes/T3Box;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x59

    .line 5
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/AES;->xor:[[Lcom/dspread/august/common/wbaes/XORCascade;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x59

    .line 6
    iget-boolean v1, p0, Lcom/dspread/august/common/wbaes/AES;->encrypt:Z

    add-int/2addr v0, v1

    return v0
.end method
