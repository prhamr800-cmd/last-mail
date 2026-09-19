###### Class android.support.design.widget.NavigationView (android.support.design.widget.NavigationView)
.class public Landroid/support/design/widget/NavigationView;
.super Landroid/support/design/internal/ScrimInsetsFrameLayout;
.source "NavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/NavigationView$SavedState;,
        Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I

.field private static final PRESENTER_NAVIGATION_VIEW_ID:I = 0x1


# instance fields
.field listener:Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;

.field private final maxWidth:I

.field private final menu:Landroid/support/design/internal/NavigationMenu;

.field private menuInflater:Landroid/view/MenuInflater;

.field private final presenter:Landroid/support/design/internal/NavigationMenuPresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 86
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Landroid/support/design/widget/NavigationView;->CHECKED_STATE_SET:[I

    .line 87
    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/NavigationView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 104
    sget v0, Landroid/support/design/R$attr;->navigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-direct {v0}, Landroid/support/design/internal/NavigationMenuPresenter;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    .line 111
    new-instance v0, Landroid/support/design/internal/NavigationMenu;

    invoke-direct {v0, p1}, Landroid/support/design/internal/NavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    .line 114
    sget-object v3, Landroid/support/design/R$styleable;->NavigationView:[I

    sget v5, Landroid/support/design/R$style;->Widget_Design_NavigationView:I

    const/4 v0, 0x0

    new-array v6, v0, [I

    .line 115
    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Landroid/support/design/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v1

    .line 122
    .local v1, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v2, Landroid/support/design/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 123
    sget v2, Landroid/support/design/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 124
    sget v2, Landroid/support/design/R$styleable;->NavigationView_elevation:I

    .line 125
    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    .line 124
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 127
    :cond_3a
    sget v2, Landroid/support/design/R$styleable;->NavigationView_android_fitsSystemWindows:I

    .line 128
    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 127
    invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 130
    sget v2, Landroid/support/design/R$styleable;->NavigationView_android_maxWidth:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/NavigationView;->maxWidth:I

    .line 133
    sget v2, Landroid/support/design/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 134
    sget v2, Landroid/support/design/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_61

    .line 136
    :cond_5a
    const v2, 0x1010038

    invoke-direct {p0, v2}, Landroid/support/design/widget/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 139
    .local v2, "itemIconTint":Landroid/content/res/ColorStateList;
    :goto_61
    const/4 v3, 0x0

    .line 140
    .local v3, "textAppearanceSet":Z
    const/4 v4, 0x0

    .line 141
    .local v4, "textAppearance":I
    sget v5, Landroid/support/design/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 142
    sget v5, Landroid/support/design/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v1, v5, v0}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    .line 143
    const/4 v3, 0x1

    .line 146
    :cond_72
    const/4 v5, 0x0

    .line 147
    .local v5, "itemTextColor":Landroid/content/res/ColorStateList;
    sget v6, Landroid/support/design/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 148
    sget v6, Landroid/support/design/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 151
    :cond_81
    if-nez v3, :cond_8c

    if-nez v5, :cond_8c

    .line 153
    const v6, 0x1010036

    invoke-direct {p0, v6}, Landroid/support/design/widget/NavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 156
    :cond_8c
    sget v6, Landroid/support/design/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 158
    .local v6, "itemBackground":Landroid/graphics/drawable/Drawable;
    sget v7, Landroid/support/design/R$styleable;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {v1, v7}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 159
    sget v7, Landroid/support/design/R$styleable;->NavigationView_itemHorizontalPadding:I

    .line 160
    invoke-virtual {v1, v7, v0}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 161
    .local v7, "itemHorizontalPadding":I
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v8, v7}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    .line 163
    .end local v7    # "itemHorizontalPadding":I
    :cond_a5
    sget v7, Landroid/support/design/R$styleable;->NavigationView_itemIconPadding:I

    .line 164
    invoke-virtual {v1, v7, v0}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 166
    .local v7, "itemIconPadding":I
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    new-instance v9, Landroid/support/design/widget/NavigationView$1;

    invoke-direct {v9, p0}, Landroid/support/design/widget/NavigationView$1;-><init>(Landroid/support/design/widget/NavigationView;)V

    invoke-virtual {v8, v9}, Landroid/support/design/internal/NavigationMenu;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 176
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/design/internal/NavigationMenuPresenter;->setId(I)V

    .line 177
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v9, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    invoke-virtual {v8, p1, v9}, Landroid/support/design/internal/NavigationMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 178
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v8, v2}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 179
    if-eqz v3, :cond_ce

    .line 180
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v8, v4}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 182
    :cond_ce
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v8, v5}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 183
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v8, v6}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v8, v7}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 185
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    iget-object v9, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v8, v9}, Landroid/support/design/internal/NavigationMenu;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 186
    iget-object v8, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v8, p0}, Landroid/support/design/internal/NavigationMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {p0, v8}, Landroid/support/design/widget/NavigationView;->addView(Landroid/view/View;)V

    .line 188
    sget v8, Landroid/support/design/R$styleable;->NavigationView_menu:I

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_100

    .line 189
    sget v8, Landroid/support/design/R$styleable;->NavigationView_menu:I

    invoke-virtual {v1, v8, v0}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/support/design/widget/NavigationView;->inflateMenu(I)V

    .line 192
    :cond_100
    sget v8, Landroid/support/design/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_111

    .line 193
    sget v8, Landroid/support/design/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v1, v8, v0}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    .line 196
    :cond_111
    invoke-virtual {v1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 197
    return-void
.end method

.method private createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 13
    .param p1, "baseColorThemeAttr"    # I

    .line 509
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 510
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_16

    .line 511
    return-object v3

    .line 513
    :cond_16
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {v1, v4}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 514
    .local v1, "baseColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 515
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    .line 516
    invoke-virtual {v4, v5, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-nez v4, :cond_31

    .line 517
    return-object v3

    .line 519
    :cond_31
    iget v3, v0, Landroid/util/TypedValue;->data:I

    .line 520
    .local v3, "colorPrimary":I
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    .line 521
    .local v4, "defaultColor":I
    new-instance v5, Landroid/content/res/ColorStateList;

    const/4 v6, 0x3

    new-array v7, v6, [[I

    sget-object v8, Landroid/support/design/widget/NavigationView;->DISABLED_STATE_SET:[I

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Landroid/support/design/widget/NavigationView;->CHECKED_STATE_SET:[I

    aput-object v8, v7, v2

    sget-object v8, Landroid/support/design/widget/NavigationView;->EMPTY_STATE_SET:[I

    const/4 v10, 0x2

    aput-object v8, v7, v10

    new-array v6, v6, [I

    sget-object v8, Landroid/support/design/widget/NavigationView;->DISABLED_STATE_SET:[I

    .line 524
    invoke-virtual {v1, v8, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    aput v8, v6, v9

    aput v3, v6, v2

    aput v4, v6, v10

    invoke-direct {v5, v7, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 521
    return-object v5
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 502
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_f

    .line 503
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    .line 505
    :cond_f
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->menuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 290
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->addHeaderView(Landroid/view/View;)V

    .line 291
    return-void
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 489
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter;->getCheckedItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCount()I
    .registers 2

    .line 308
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter;->getHeaderCount()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 319
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 372
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter;->getItemBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .registers 2
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .line 403
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter;->getItemHorizontalPadding()I

    move-result v0

    return v0
.end method

.method public getItemIconPadding()I
    .registers 2
    .annotation build Landroid/support/annotation/Dimension;
    .end annotation

    .line 434
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter;->getItemIconPadding()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 330
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter;->getItemTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 351
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .line 271
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    return-object v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .registers 3
    .param p1, "res"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 281
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->inflateHeaderView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public inflateMenu(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 263
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 264
    invoke-direct {p0}, Landroid/support/design/widget/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 265
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 266
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 267
    return-void
.end method

.method protected onInsetsChanged(Landroid/support/v4/view/WindowInsetsCompat;)V
    .registers 3
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->dispatchApplyWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)V

    .line 253
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 231
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_17

    if-eqz v0, :cond_10

    if-eq v0, v2, :cond_f

    goto :goto_27

    .line 234
    :cond_f
    goto :goto_27

    .line 241
    :cond_10
    iget v0, p0, Landroid/support/design/widget/NavigationView;->maxWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_27

    .line 236
    :cond_17
    nop

    .line 238
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/NavigationView;->maxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 237
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 239
    nop

    .line 245
    :goto_27
    invoke-super {p0, p1, p2}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onMeasure(II)V

    .line 246
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "savedState"    # Landroid/os/Parcelable;

    .line 210
    instance-of v0, p1, Landroid/support/design/widget/NavigationView$SavedState;

    if-nez v0, :cond_8

    .line 211
    invoke-super {p0, p1}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 212
    return-void

    .line 214
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/support/design/widget/NavigationView$SavedState;

    .line 215
    .local v0, "state":Landroid/support/design/widget/NavigationView$SavedState;
    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 216
    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    iget-object v2, v0, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/support/design/internal/NavigationMenu;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 217
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 201
    invoke-super {p0}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 202
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/support/design/widget/NavigationView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/design/widget/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 203
    .local v1, "state":Landroid/support/design/widget/NavigationView$SavedState;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    .line 204
    iget-object v2, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    iget-object v3, v1, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/support/design/internal/NavigationMenu;->savePresenterStates(Landroid/os/Bundle;)V

    .line 205
    return-object v1
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 299
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->removeHeaderView(Landroid/view/View;)V

    .line 300
    return-void
.end method

.method public setCheckedItem(I)V
    .registers 5
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 463
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 464
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_10

    .line 465
    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v2, v0

    check-cast v2, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v1, v2}, Landroid/support/design/internal/NavigationMenuPresenter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 467
    :cond_10
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .registers 5
    .param p1, "checkedItem"    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 475
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->menu:Landroid/support/design/internal/NavigationMenu;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 476
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_15

    .line 477
    iget-object v1, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v2, v0

    check-cast v2, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v1, v2}, Landroid/support/design/internal/NavigationMenuPresenter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 482
    return-void

    .line 479
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "itemBackground"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 392
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 393
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 382
    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 383
    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .registers 3
    .param p1, "padding"    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .line 413
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    .line 414
    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .registers 4
    .param p1, "paddingResource"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 423
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemHorizontalPadding(I)V

    .line 424
    return-void
.end method

.method public setItemIconPadding(I)V
    .registers 3
    .param p1, "padding"    # I
        .annotation build Landroid/support/annotation/Dimension;
        .end annotation
    .end param

    .line 444
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 445
    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .registers 4
    .param p1, "paddingResource"    # I

    .line 454
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {p0}, Landroid/support/design/widget/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemIconPadding(I)V

    .line 455
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 340
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 341
    return-void
.end method

.method public setItemTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 498
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemTextAppearance(I)V

    .line 499
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 361
    iget-object v0, p0, Landroid/support/design/widget/NavigationView;->presenter:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/NavigationMenuPresenter;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 362
    return-void
.end method

.method public setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 226
    iput-object p1, p0, Landroid/support/design/widget/NavigationView;->listener:Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;

    .line 227
    return-void
.end method

###### Class android.support.design.widget.NavigationView.AnonymousClass1 (android.support.design.widget.NavigationView$1)
.class Landroid/support/design/widget/NavigationView$1;
.super Ljava/lang/Object;
.source "NavigationView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/NavigationView;


# direct methods
.method constructor <init>(Landroid/support/design/widget/NavigationView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/widget/NavigationView;

    .line 167
    iput-object p1, p0, Landroid/support/design/widget/NavigationView$1;->this$0:Landroid/support/design/widget/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 170
    iget-object v0, p0, Landroid/support/design/widget/NavigationView$1;->this$0:Landroid/support/design/widget/NavigationView;

    iget-object v0, v0, Landroid/support/design/widget/NavigationView;->listener:Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/design/widget/NavigationView$1;->this$0:Landroid/support/design/widget/NavigationView;

    iget-object v0, v0, Landroid/support/design/widget/NavigationView;->listener:Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;

    invoke-interface {v0, p2}, Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .line 174
    return-void
.end method

###### Class android.support.design.widget.NavigationView.OnNavigationItemSelectedListener (android.support.design.widget.NavigationView$OnNavigationItemSelectedListener)
.class public interface abstract Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;
.super Ljava/lang/Object;
.source "NavigationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/NavigationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnNavigationItemSelectedListener"
.end annotation


# virtual methods
.method public abstract onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

###### Class android.support.design.widget.NavigationView.SavedState (android.support.design.widget.NavigationView$SavedState)
.class public Landroid/support/design/widget/NavigationView$SavedState;
.super Landroid/support/v4/view/AbsSavedState;
.source "NavigationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/NavigationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/design/widget/NavigationView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public menuState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 561
    new-instance v0, Landroid/support/design/widget/NavigationView$SavedState$1;

    invoke-direct {v0}, Landroid/support/design/widget/NavigationView$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/design/widget/NavigationView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 547
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 548
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    .line 549
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 552
    invoke-direct {p0, p1}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 553
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .line 557
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 558
    iget-object v0, p0, Landroid/support/design/widget/NavigationView$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 559
    return-void
.end method

###### Class android.support.design.widget.NavigationView.SavedState.AnonymousClass1 (android.support.design.widget.NavigationView$SavedState$1)
.class final Landroid/support/design/widget/NavigationView$SavedState$1;
.super Ljava/lang/Object;
.source "NavigationView.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/NavigationView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/support/design/widget/NavigationView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/design/widget/NavigationView$SavedState;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 570
    new-instance v0, Landroid/support/design/widget/NavigationView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/design/widget/NavigationView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/widget/NavigationView$SavedState;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 565
    new-instance v0, Landroid/support/design/widget/NavigationView$SavedState;

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/NavigationView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 562
    invoke-virtual {p0, p1}, Landroid/support/design/widget/NavigationView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/design/widget/NavigationView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 562
    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/NavigationView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/design/widget/NavigationView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/support/design/widget/NavigationView$SavedState;
    .registers 3
    .param p1, "size"    # I

    .line 575
    new-array v0, p1, [Landroid/support/design/widget/NavigationView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 562
    invoke-virtual {p0, p1}, Landroid/support/design/widget/NavigationView$SavedState$1;->newArray(I)[Landroid/support/design/widget/NavigationView$SavedState;

    move-result-object p1

    return-object p1
.end method
