.class Lcom/itextpdf/io/font/woff2/TableTags;
.super Ljava/lang/Object;
.source "TableTags.java"


# static fields
.field public static final kCffTableTag:I = 0x43464620

.field public static final kDsigTableTag:I = 0x44534947

.field public static final kGlyfTableTag:I = 0x676c7966

.field public static final kHeadTableTag:I = 0x68656164

.field public static final kHheaTableTag:I = 0x68686561

.field public static final kHmtxTableTag:I = 0x686d7478

.field public static kKnownTags:[I = null

.field public static final kLocaTableTag:I = 0x6c6f6361

.field public static final kMaxpTableTag:I = 0x6d617870


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 35
    const/16 v0, 0x3f

    new-array v0, v0, [I

    .line 36
    const/16 v1, 0x63

    const/16 v2, 0x6d

    const/16 v3, 0x61

    const/16 v4, 0x70

    invoke-static {v1, v2, v3, v4}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v5

    const/4 v6, 0x0

    aput v5, v0, v6

    .line 37
    const/16 v5, 0x68

    const/16 v6, 0x65

    const/16 v7, 0x64

    invoke-static {v5, v6, v3, v7}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v8

    const/4 v9, 0x1

    aput v8, v0, v9

    .line 38
    invoke-static {v5, v5, v6, v3}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v8

    const/4 v9, 0x2

    aput v8, v0, v9

    .line 39
    const/16 v8, 0x74

    const/16 v9, 0x78

    invoke-static {v5, v2, v8, v9}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v10

    const/4 v11, 0x3

    aput v10, v0, v11

    .line 40
    invoke-static {v2, v3, v9, v4}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v10

    const/4 v11, 0x4

    aput v10, v0, v11

    .line 41
    const/16 v10, 0x6e

    invoke-static {v10, v3, v2, v6}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v10

    const/4 v11, 0x5

    aput v10, v0, v11

    .line 42
    const/16 v10, 0x4f

    const/16 v11, 0x53

    const/16 v12, 0x2f

    const/16 v13, 0x32

    invoke-static {v10, v11, v12, v13}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v10

    const/4 v12, 0x6

    aput v10, v0, v12

    .line 43
    const/16 v10, 0x6f

    const/16 v12, 0x73

    invoke-static {v4, v10, v12, v8}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v13

    const/4 v14, 0x7

    aput v13, v0, v14

    .line 44
    const/16 v13, 0x76

    const/16 v14, 0x20

    invoke-static {v1, v13, v8, v14}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v14

    const/16 v15, 0x8

    aput v14, v0, v15

    .line 45
    const/16 v14, 0x66

    const/16 v15, 0x67

    invoke-static {v14, v4, v15, v2}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v15

    const/16 v16, 0x9

    aput v15, v0, v16

    .line 46
    const/16 v15, 0x67

    const/16 v8, 0x6c

    const/16 v13, 0x79

    invoke-static {v15, v8, v13, v14}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v13

    const/16 v15, 0xa

    aput v13, v0, v15

    .line 47
    invoke-static {v8, v10, v1, v3}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v13

    const/16 v15, 0xb

    aput v13, v0, v15

    .line 48
    const/16 v13, 0x72

    invoke-static {v4, v13, v6, v4}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v15

    const/16 v17, 0xc

    aput v15, v0, v17

    .line 49
    const/16 v15, 0x43

    const/16 v14, 0x46

    const/16 v8, 0x20

    invoke-static {v15, v14, v14, v8}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v8

    const/16 v18, 0xd

    aput v8, v0, v18

    .line 50
    const/16 v8, 0x56

    const/16 v10, 0x4f

    const/16 v1, 0x52

    const/16 v14, 0x47

    invoke-static {v8, v10, v1, v14}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v8, 0xe

    aput v1, v0, v8

    .line 51
    const/16 v1, 0x45

    const/16 v8, 0x42

    const/16 v10, 0x44

    const/16 v14, 0x54

    invoke-static {v1, v8, v10, v14}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v10, 0xf

    aput v1, v0, v10

    .line 52
    const/16 v1, 0x45

    const/16 v10, 0x4c

    invoke-static {v1, v8, v10, v15}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v19, 0x10

    aput v1, v0, v19

    .line 53
    const/16 v1, 0x67

    invoke-static {v1, v3, v12, v4}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v19, 0x11

    aput v1, v0, v19

    .line 54
    invoke-static {v5, v7, v2, v9}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v19, 0x12

    aput v1, v0, v19

    .line 55
    const/16 v1, 0x6b

    const/16 v4, 0x6e

    invoke-static {v1, v6, v13, v4}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x13

    aput v1, v0, v4

    .line 56
    const/16 v1, 0x48

    invoke-static {v10, v14, v11, v1}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x14

    aput v1, v0, v4

    .line 57
    const/16 v1, 0x50

    invoke-static {v1, v15, v10, v14}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x15

    aput v1, v0, v4

    .line 58
    const/16 v1, 0x56

    const/16 v4, 0x44

    const/16 v7, 0x4d

    const/16 v13, 0x58

    invoke-static {v1, v4, v7, v13}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x16

    aput v1, v0, v4

    .line 59
    const/16 v1, 0x76

    invoke-static {v1, v5, v6, v3}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v4

    const/16 v7, 0x17

    aput v4, v0, v7

    .line 60
    const/16 v4, 0x74

    invoke-static {v1, v2, v4, v9}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v7

    const/16 v1, 0x18

    aput v7, v0, v1

    .line 61
    const/16 v1, 0x41

    const/16 v4, 0x45

    invoke-static {v8, v1, v11, v4}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x19

    aput v1, v0, v4

    .line 62
    const/16 v1, 0x44

    const/16 v4, 0x45

    const/16 v7, 0x46

    const/16 v13, 0x47

    invoke-static {v13, v1, v4, v7}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x1a

    aput v1, v0, v4

    .line 63
    const/16 v1, 0x50

    const/16 v4, 0x4f

    invoke-static {v13, v1, v4, v11}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x1b

    aput v1, v0, v4

    .line 64
    const/16 v1, 0x55

    invoke-static {v13, v11, v1, v8}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x1c

    aput v1, v0, v4

    .line 65
    const/16 v1, 0x45

    invoke-static {v1, v8, v11, v15}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x1d

    aput v1, v0, v4

    .line 66
    const/16 v1, 0x4a

    const/16 v4, 0x46

    invoke-static {v1, v11, v14, v4}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x1e

    aput v1, v0, v4

    .line 67
    const/16 v1, 0x4d

    const/16 v4, 0x41

    const/16 v7, 0x48

    invoke-static {v1, v4, v14, v7}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x1f

    aput v1, v0, v4

    .line 68
    const/16 v1, 0x44

    invoke-static {v15, v8, v1, v14}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x20

    aput v1, v0, v4

    .line 69
    invoke-static {v15, v8, v10, v15}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x21

    aput v1, v0, v4

    .line 70
    const/16 v1, 0x4f

    const/16 v4, 0x52

    invoke-static {v15, v1, v10, v4}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x22

    aput v1, v0, v4

    .line 71
    const/16 v1, 0x50

    const/16 v4, 0x41

    invoke-static {v15, v1, v4, v10}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x23

    aput v1, v0, v4

    .line 72
    const/16 v1, 0x56

    const/16 v4, 0x20

    const/16 v7, 0x47

    invoke-static {v11, v1, v7, v4}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x24

    aput v1, v0, v4

    .line 73
    const/16 v1, 0x62

    const/16 v4, 0x69

    invoke-static {v12, v1, v4, v9}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x25

    aput v1, v0, v4

    .line 74
    const/16 v1, 0x6e

    const/16 v4, 0x63

    const/16 v7, 0x74

    invoke-static {v3, v4, v1, v7}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x26

    aput v1, v0, v4

    .line 75
    const/16 v1, 0x76

    const/16 v4, 0x72

    invoke-static {v3, v1, v3, v4}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v8

    const/16 v1, 0x27

    aput v8, v0, v1

    .line 76
    const/16 v1, 0x62

    const/16 v4, 0x64

    invoke-static {v1, v4, v3, v7}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x28

    aput v1, v0, v4

    .line 77
    const/16 v1, 0x62

    const/16 v4, 0x6f

    const/16 v7, 0x63

    const/16 v8, 0x6c

    invoke-static {v1, v8, v4, v7}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x29

    aput v1, v0, v4

    .line 78
    const/16 v1, 0x62

    const/16 v4, 0x6e

    invoke-static {v1, v12, v8, v4}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x2a

    aput v1, v0, v4

    .line 79
    const/16 v1, 0x76

    const/16 v4, 0x72

    invoke-static {v7, v1, v3, v4}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v8

    const/16 v1, 0x2b

    aput v8, v0, v1

    .line 80
    const/16 v1, 0x64

    const/16 v4, 0x66

    invoke-static {v4, v1, v12, v7}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v8

    const/16 v1, 0x2c

    aput v8, v0, v1

    .line 81
    const/16 v1, 0x74

    invoke-static {v4, v6, v3, v1}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v7

    const/16 v8, 0x2d

    aput v7, v0, v8

    .line 82
    invoke-static {v4, v2, v1, v9}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v7

    const/16 v1, 0x2e

    aput v7, v0, v1

    .line 83
    const/16 v1, 0x76

    const/16 v7, 0x72

    invoke-static {v4, v1, v3, v7}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v8

    const/16 v4, 0x2f

    aput v8, v0, v4

    .line 84
    const/16 v4, 0x67

    invoke-static {v4, v1, v3, v7}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x30

    aput v1, v0, v4

    .line 85
    const/16 v1, 0x79

    const/16 v4, 0x74

    invoke-static {v5, v12, v4, v1}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v5, 0x31

    aput v1, v0, v5

    .line 86
    const/16 v1, 0x6a

    const/16 v5, 0x75

    invoke-static {v1, v5, v12, v4}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v5, 0x32

    aput v1, v0, v5

    .line 87
    const/16 v1, 0x63

    const/16 v5, 0x6c

    const/16 v7, 0x72

    invoke-static {v5, v1, v3, v7}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v8

    const/16 v1, 0x33

    aput v8, v0, v1

    .line 88
    const/16 v1, 0x6f

    invoke-static {v2, v1, v7, v4}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v5

    const/16 v4, 0x34

    aput v5, v0, v4

    .line 89
    invoke-static {v2, v1, v7, v9}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v2

    const/16 v4, 0x35

    aput v2, v0, v4

    .line 90
    const/16 v2, 0x62

    const/16 v4, 0x64

    const/16 v5, 0x70

    invoke-static {v1, v5, v2, v4}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v2

    const/16 v4, 0x36

    aput v2, v0, v4

    .line 91
    invoke-static {v5, v7, v1, v5}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v2

    const/16 v1, 0x37

    aput v2, v0, v1

    .line 92
    const/16 v1, 0x6b

    const/16 v2, 0x74

    invoke-static {v2, v7, v3, v1}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v2, 0x38

    aput v1, v0, v2

    .line 93
    const/16 v1, 0x5a

    const/16 v2, 0x66

    invoke-static {v1, v3, v5, v2}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v4, 0x39

    aput v1, v0, v4

    .line 94
    const/16 v1, 0x69

    const/16 v4, 0x6c

    invoke-static {v11, v1, v4, v2}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v2, 0x3a

    aput v1, v0, v2

    .line 95
    const/16 v1, 0x47

    const/16 v2, 0x74

    invoke-static {v1, v4, v3, v2}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v5

    const/16 v7, 0x3b

    aput v5, v0, v7

    .line 96
    const/16 v5, 0x6f

    const/16 v7, 0x63

    invoke-static {v1, v4, v5, v7}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v5, 0x3c

    aput v1, v0, v5

    .line 97
    const/16 v1, 0x46

    invoke-static {v1, v6, v3, v2}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v2, 0x3d

    aput v1, v0, v2

    .line 98
    const/16 v1, 0x69

    invoke-static {v11, v1, v4, v4}, Lcom/itextpdf/io/font/woff2/TableTags;->tag(CCCC)I

    move-result v1

    const/16 v2, 0x3e

    aput v1, v0, v2

    sput-object v0, Lcom/itextpdf/io/font/woff2/TableTags;->kKnownTags:[I

    .line 35
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static tag(CCCC)I
    .locals 2
    .param p0, "a"    # C
    .param p1, "b"    # C
    .param p2, "c"    # C
    .param p3, "d"    # C

    .line 22
    shl-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method
