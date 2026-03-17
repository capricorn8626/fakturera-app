import { useEffect, useMemo, useRef, useState } from 'react';
import { useLanguage } from '../context/LanguageContext';

const Navbar = () => {
    const { t, language, changeLanguage } = useLanguage();
    const [menuOpen, setMenuOpen] = useState(false);
    const [desktopLangOpen, setDesktopLangOpen] = useState(false);
    const [mobileLangOpen, setMobileLangOpen] = useState(false);

    const menuRef = useRef(null);
    const desktopLangRef = useRef(null);
    const mobileLangRef = useRef(null);

    const languages = useMemo(
        () => [
            {
                code: 'sv',
                name: 'Svenska',
                icon: 'https://storage.123fakturere.no/public/flags/SE.png',
            },
            {
                code: 'en',
                name: 'English',
                icon: 'https://storage.123fakturere.no/public/flags/GB.png',
            },
        ],
        []
    );

    const currentLanguage =
        languages.find((item) => item.code === language) || languages[0];

    useEffect(() => {
        const handleClickOutside = (event) => {
            const target = event.target;

            if (menuRef.current && !menuRef.current.contains(target)) {
                setMenuOpen(false);
            }

            if (desktopLangRef.current && !desktopLangRef.current.contains(target)) {
                setDesktopLangOpen(false);
            }

            if (mobileLangRef.current && !mobileLangRef.current.contains(target)) {
                setMobileLangOpen(false);
            }
        };

        document.addEventListener('click', handleClickOutside);
        return () => {
            document.removeEventListener('click', handleClickOutside);
        };
    }, []);

    const toggleDesktopLanguage = (event) => {
        event.preventDefault();
        event.stopPropagation();
        setDesktopLangOpen((prev) => !prev);
        setMobileLangOpen(false);
        setMenuOpen(false);
    };

    const toggleMobileLanguage = (event) => {
        event.preventDefault();
        event.stopPropagation();
        setMobileLangOpen((prev) => !prev);
        setDesktopLangOpen(false);
        setMenuOpen(false);
    };

    const toggleMenu = (event) => {
        event.stopPropagation();
        setMenuOpen((prev) => !prev);
        setDesktopLangOpen(false);
        setMobileLangOpen(false);
    };

    const onSelectLanguage = (selectedLanguage) => {
        changeLanguage(selectedLanguage.code);
        setDesktopLangOpen(false);
        setMobileLangOpen(false);
        setMenuOpen(false);
    };

    const closeAllMenus = () => {
        setMenuOpen(false);
        setDesktopLangOpen(false);
        setMobileLangOpen(false);
    };

    return (
        <nav className="navigation-out">
            <header className="navigation-header">
                <section className="navigation-section">
                    <div className="logoa">
                        <a href="/">
                            <img className="navigation-logo" src="https://storage.123fakturera.se/public/icons/diamond.png" alt="" />
                        </a>
                    </div>
                    <div className="open-menu-dds">
                        <button type="button" onClick={toggleMenu} style={{ background: 'none', color: 'inherit', cursor: 'pointer' }}>
                            <svg stroke="currentColor" fill="currentColor" strokeWidth="0" viewBox="0 0 24 24" className="navigation-svg" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                                <path d="M4 6h16v2H4zm0 5h16v2H4zm0 5h16v2H4z"></path>
                            </svg>
                        </button>
                    </div>
                    <div className="navigation-menu-bar" ref={menuRef}>
                        <div className="menu-drop-down" style={{ height: menuOpen ? '325px' : '0px' }}>
                            <div className="menu-drop-down-container">
                                <a className="menu-drop-down-item" href="/" onClick={closeAllMenus}>
                                    <span className="collectionSpan">
                                        <p className="menu-item-name">{t('menu.home')}</p>
                                    </span>
                                </a>
                                <a className="menu-drop-down-item" href="/" onClick={closeAllMenus}>
                                    <span className="collectionSpan">
                                        <p className="menu-item-name">{t('menu.order')}</p>
                                    </span>
                                </a>
                                <a className="menu-drop-down-item" href="/" onClick={closeAllMenus}>
                                    <span className="collectionSpan">
                                        <p className="menu-item-name">{t('menu.ourCustomers')}</p>
                                    </span>
                                </a>
                                <a className="menu-drop-down-item" href="/" onClick={closeAllMenus}>
                                    <span className="collectionSpan">
                                        <p className="menu-item-name">{t('menu.about')}</p>
                                    </span>
                                </a>
                                <a className="menu-drop-down-item" href="/" onClick={closeAllMenus}>
                                    <span className="collectionSpan">
                                        <p className="menu-item-name">{t('menu.contact')}</p>
                                    </span>
                                </a>
                            </div>
                        </div>
                        <div className="pc-menu">
                            <a className="pc-menu-items" href="/">
                                <span className="collectionSpan">
                                    <p className="collectionitem">{t('menu.home')}</p>
                                </span>
                            </a>
                            <a className="pc-menu-items" href="/" onClick={closeAllMenus}>
                                <span className="collectionSpan">
                                    <p className="collectionitem">{t('menu.order')}</p>
                                </span>
                            </a>
                            <a className="pc-menu-items" href="/" onClick={closeAllMenus}>
                                <span className="collectionSpan">
                                    <p className="collectionitem">{t('menu.ourCustomers')}</p>
                                </span>
                            </a>
                            <a className="pc-menu-items" href="/" onClick={closeAllMenus}>
                                <span className="collectionSpan">
                                    <p className="collectionitem">{t('menu.about')}</p>
                                </span>
                            </a>
                            <a className="pc-menu-items" href="/" onClick={closeAllMenus}>
                                <span className="collectionSpan">
                                    <p className="collectionitem">{t('menu.contact')}</p>
                                </span>
                            </a>
                            <div ref={desktopLangRef} style={{ display: 'inline-block' }}>
                                <a className="pc-menu-items language-pc-menu-items" href="/" onClick={toggleDesktopLanguage}>
                                    <div>
                                        <div className="language-title-box">
                                            <p className="language-name">{currentLanguage.name}</p>
                                            <img src={currentLanguage.icon} className="flag-icon drop-down-image" alt={currentLanguage.name} />
                                        </div>
                                    </div>
                                </a>
                                <div className="lang-drop">
                                    <div className="lang-drop-container">
                                        <div className="dropdownList" style={{ display: desktopLangOpen ? 'block' : 'none' }}>
                                            {languages.map((item) => (
                                                <div
                                                    key={item.code}
                                                    className={`language-${item.name} drop-down-element`}
                                                    onClick={() => onSelectLanguage(item)}
                                                >
                                                    <div className="drop-down-lang-name">{item.name}</div>
                                                    <div className="drop-down-image-div">
                                                        <img src={item.icon} className="drop-down-image" alt={item.name} />
                                                    </div>
                                                </div>
                                            ))}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="lang-dropk" ref={mobileLangRef}>
                        <div>
                            <div className="dropdownContainer" onClick={toggleMobileLanguage}>
                                <div className="language-box">
                                    <p className="flag-name collectionitem">{currentLanguage.name}</p>
                                    <img src={currentLanguage.icon} className="icon-flag-nav" alt={currentLanguage.name} />
                                </div>
                            </div>
                            <div className="dropdownList" style={{ display: mobileLangOpen ? 'block' : 'none' }}>
                                {languages.map((item) => (
                                    <div
                                        key={`${item.code}-mobile`}
                                        className={`language-${item.name} drop-down-element`}
                                        onClick={() => onSelectLanguage(item)}
                                    >
                                        <div className="drop-down-lang-name">{item.name}</div>
                                        <div className="drop-down-image-div">
                                            <img src={item.icon} className="drop-down-image" alt={item.name} />
                                        </div>
                                    </div>
                                ))}
                            </div>
                        </div>
                    </div>
                </section>
            </header>
        </nav>
    );
};

export default Navbar;
